import 'dart:io';
import 'dart:math';

import 'package:file_cryptor/file_cryptor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyperledger_admin/application/prescription_list/prescription_list_cubit.dart';
import 'package:hyperledger_admin/domain/failure.dart';
import 'package:hyperledger_admin/presentation/components/primary_button.dart';
import 'package:hyperledger_admin/presentation/components/primary_textfield.dart';
import 'package:ipfs_client_flutter/ipfs_client_flutter.dart';

class PatientPage extends StatelessWidget {
  const PatientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrescriptionListCubit, PrescriptionListState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.prescription.prescriptions.isNotEmpty) {
          return GridView.builder(
            shrinkWrap: true,
            itemCount: state.prescription.prescriptions.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2.1,
            ),
            itemBuilder: (context, index) {
              final prescription = state.prescription.prescriptions[index];
              final isAllowed = prescription.claims?.first.isAllowed;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Condition: ${prescription.condition}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Divider(height: 0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Medications:',
                                  style: TextStyle(fontSize: 16),
                                ),
                                ...prescription.medicines.map(
                                  (medicine) => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Name: ${medicine.name}'),
                                      Text('Dose: ${medicine.dose}'),
                                      Text('Time: ${medicine.time}'),
                                      Text(medicine.description ?? 'N/A'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Attachments:',
                                  style: TextStyle(fontSize: 16),
                                ),
                                ...prescription.attachments!.map(
                                  (attachment) {
                                    final i = prescription.attachments!
                                        .indexOf(attachment);
                                    return InkWell(
                                      onTap: () async {
                                        IpfsClient ipfsClient = IpfsClient();
                                        var response = await ipfsClient.read(
                                          dir: "/attachments/$attachment",
                                        );

                                        final inputFileName =
                                            "saved${Random().nextInt(5000)}.aes";
                                        final outputFileName =
                                            "saved${Random().nextInt(5000)}.jpg";

                                        print(response);

                                        final result = await File(
                                          inputFileName,
                                        ).writeAsBytes(
                                            response['data'] as Uint8List);

                                        FileCryptor fileCryptor = FileCryptor(
                                          key:
                                              "XHYDC5KRQcCjdQUu+6NvurR3X7SQYh2Q",
                                          iv: 16,
                                          dir: "C:/Users/ihnis/Downloads/",
                                        );

                                        File decryptedFile =
                                            await fileCryptor.decrypt(
                                          inputFile: inputFileName,
                                          outputFile: outputFileName,
                                        );
                                        print(decryptedFile.absolute);

                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              content:
                                                  Image.file(decryptedFile),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('Close'),
                                                ),
                                              ],
                                            );
                                          },
                                        );

                                        print(result.path);
                                      },
                                      child: Text(
                                        '${i + 1}: ${attachment.substring(0, 20)}...',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      isAllowed != null && isAllowed
                          ? const SizedBox.shrink()
                          : InkWell(
                              onTap: () {
                                context
                                    .read<PrescriptionListCubit>()
                                    .grantAccess(prescription.uuid);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  child: Center(
                                    child: Text(
                                      'Grant Access',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              );
            },
          );
        }
        return Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PrimaryTextField(
                  text: 'Email',
                  onChanged: (value) {
                    context.read<PrescriptionListCubit>().emailChanged(value);
                  },
                ),
                PrimaryTextField(
                  text: 'Password',
                  onChanged: (value) {
                    context
                        .read<PrescriptionListCubit>()
                        .passwordChanged(value);
                  },
                ),
                state.failure != Failure.none()
                    ? const Text(
                        'Wrong email and password combination!',
                        style: TextStyle(color: Colors.red),
                      )
                    : const SizedBox.shrink(),
                const SizedBox(height: 16),
                PrimaryButton(
                  text: 'Login',
                  onTap: () {
                    context.read<PrescriptionListCubit>().getPrescriptions();
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
