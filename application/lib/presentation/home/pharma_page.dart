import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyperledger_admin/application/prescription_list/prescription_list_cubit.dart';

class PharmaPage extends StatelessWidget {
  const PharmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrescriptionListCubit, PrescriptionListState>(
      builder: (context, state) {
        final prescriptions = state.prescription.prescriptions
            .where(
              (element) => element.claims?.first.isAllowed ?? false,
            )
            .toList();

        if (prescriptions.isNotEmpty) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: prescriptions.length,
            itemBuilder: (context, index) {
              final prescription = prescriptions[index];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(
                          'Condition: ${prescription.condition}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const Divider(),
                      ],
                    ),
                    trailing: const SizedBox.shrink(),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Medications:',
                          style: TextStyle(fontSize: 16),
                        ),
                        ...prescription.medicines.map(
                          (medicine) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                  ),
                ),
              );
            },
          );
        }
        return const Center(
          child: Text('No prescriptions shared with you'),
        );
      },
    );
  }
}
