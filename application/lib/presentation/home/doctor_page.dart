import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyperledger_admin/application/attachment/attachment_cubit.dart';
import 'package:hyperledger_admin/application/contract/contract_cubit.dart';
import 'package:hyperledger_admin/application/prescription/prescription_cubit.dart';
import 'package:hyperledger_admin/domain/login_info.dart';
import 'package:hyperledger_admin/presentation/components/primary_button.dart';
import 'package:hyperledger_admin/presentation/components/primary_dropdown.dart';
import 'package:hyperledger_admin/presentation/components/primary_textfield.dart';
import 'package:hyperledger_admin/presentation/components/secondary_button.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final prescriptionCubit = context.watch<PrescriptionCubit>();

    return BlocListener<AttachmentCubit, AttachmentState>(
      listener: (context, state) {
        if (state.attachment.isNotEmpty) {
          context.read<PrescriptionCubit>().addAttachment(state.attachment);
          context.read<AttachmentCubit>().clear();
        }
      },
      child: BlocListener<PrescriptionCubit, PrescriptionState>(
        listener: (context, state) {
          if (state.loginInfo != LoginInfo.empty()) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Use this to sign in'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          const Text('Email:'),
                          const SizedBox(width: 8),
                          Text(state.loginInfo.email),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text('Password:'),
                          const SizedBox(width: 8),
                          Text(state.loginInfo.password),
                        ],
                      ),
                    ],
                  ),
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
          }
        },
        child: BlocConsumer<ContractCubit, ContractState>(
          listener: (context, state) {
            if (state.contacts.isNotEmpty) {
              context.read<PrescriptionCubit>().contractChanged(
                    state.contacts.first.uuid,
                  );
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 32,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      state.loading
                          ? const CircularProgressIndicator()
                          : PrimaryDropdown(
                              text: 'Contract',
                              value: prescriptionCubit
                                  .state.prescription.contractTypeUuid,
                              onChanged: (value) {
                                context
                                    .read<PrescriptionCubit>()
                                    .contractChanged(
                                      value,
                                    );
                              },
                              items: state.contacts
                                  .map(
                                    (contract) => DropdownMenuItem<String>(
                                      value: contract.uuid,
                                      child: Text(
                                        contract.description,
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                      PrimaryTextField(
                        text: 'First Name',
                        onChanged: (value) {
                          context
                              .read<PrescriptionCubit>()
                              .firstNameChanged(value);
                        },
                      ),
                      PrimaryTextField(
                        text: 'Last Name',
                        onChanged: (value) {
                          context
                              .read<PrescriptionCubit>()
                              .lastNameChanged(value);
                        },
                      ),
                      PrimaryTextField(
                        text: 'Email',
                        onChanged: (value) {
                          context.read<PrescriptionCubit>().emailChanged(value);
                        },
                      ),
                      PrimaryTextField(
                        text: 'Condition',
                        onChanged: (value) {
                          context
                              .read<PrescriptionCubit>()
                              .conditionChanged(value);
                        },
                      ),
                      SecondaryButton(
                        text: 'Add Medicine',
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Column(
                                children: [
                                  const SizedBox(height: 16),
                                  PrimaryTextField(
                                    text: 'Name',
                                    onChanged: (value) {
                                      context
                                          .read<PrescriptionCubit>()
                                          .medicineNameChanged(value);
                                    },
                                  ),
                                  PrimaryTextField(
                                    text: 'Dosage',
                                    onChanged: (value) {
                                      context
                                          .read<PrescriptionCubit>()
                                          .medicineDosageChanged(value);
                                    },
                                  ),
                                  PrimaryDropdown(
                                    text: 'When',
                                    value: prescriptionCubit.state.when,
                                    onChanged: (value) {
                                      context
                                          .read<PrescriptionCubit>()
                                          .medicineTimeChanged(value);
                                    },
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'Morning',
                                        child: Text('Morning'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Noon',
                                        child: Text('Noon'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Afternoon',
                                        child: Text('Afternoon'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Night',
                                        child: Text('Night'),
                                      ),
                                    ],
                                  ),
                                  const PrimaryTextField(text: 'Description'),
                                  SecondaryButton(
                                    text: 'Close',
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  PrimaryButton(
                                    text: 'Add Medicine',
                                    onTap: () {
                                      context
                                          .read<PrescriptionCubit>()
                                          .addMedicine();

                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      BlocBuilder<AttachmentCubit, AttachmentState>(
                        builder: (context, state) {
                          return Column(
                            children: [
                              SecondaryButton(
                                text: 'Add Attachment',
                                onTap: () {
                                  context
                                      .read<AttachmentCubit>()
                                      .addAttachment();
                                },
                              ),
                              // state.loading
                              //     ? const LinearProgressIndicator()
                              //     : const SizedBox.shrink(),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      BlocBuilder<PrescriptionCubit, PrescriptionState>(
                        builder: (context, state) {
                          if (state.prescription.attachments == null ||
                              state.prescription.attachments!.isEmpty) {
                            return const SizedBox.shrink();
                          }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...prescriptionCubit
                                  .state.prescription.attachments!
                                  .map((attachment) {
                                int i = prescriptionCubit
                                    .state.prescription.attachments!
                                    .indexOf(attachment);
                                return Text('${i + 1}: $attachment');
                              }).toList(),
                              const SizedBox(height: 16),
                            ],
                          );
                        },
                      ),
                      PrimaryButton(
                        text: 'Submit',
                        isLoading: prescriptionCubit.state.loading,
                        onTap: () {
                          context
                              .read<PrescriptionCubit>()
                              .submitButtonPressed();
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 400,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount:
                          prescriptionCubit.state.prescription.medicines.length,
                      itemBuilder: (context, index) {
                        final medicine = prescriptionCubit
                            .state.prescription.medicines[index];

                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${index + 1}. ${medicine.name}',
                                  style: const TextStyle(fontSize: 20),
                                ),
                                const SizedBox(height: 8),
                                Text('Dose: ${medicine.dose}'),
                                Text('Time: ${medicine.time}'),
                                Text('Description: ${medicine.description}'),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
