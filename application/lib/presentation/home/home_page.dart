import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hyperledger_admin/application/block/block_cubit.dart';
import 'package:hyperledger_admin/application/contract/contract_cubit.dart';
import 'package:hyperledger_admin/presentation/block_explorer/block_explorer_page.dart';
import 'package:hyperledger_admin/presentation/components/entity_selection_button.dart';
import 'package:hyperledger_admin/presentation/home/doctor_page.dart';
import 'package:hyperledger_admin/presentation/home/patient_page.dart';
import 'package:hyperledger_admin/presentation/home/pharma_page.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(2);

    useEffect(() {
      context.read<ContractCubit>().fetchContracts();
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text(
          'MediSafe',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            actions: [
              Container(
                color: Colors.grey,
                width: 1,
              ),
              EntitySelectionButton(
                text: 'Patient',
                isSelected: currentIndex.value == 0,
                onTap: () {
                  currentIndex.value = 0;
                },
              ),
              Container(
                color: Colors.grey,
                width: 1,
              ),
              EntitySelectionButton(
                text: 'Pharma',
                isSelected: currentIndex.value == 1,
                onTap: () {
                  currentIndex.value = 1;
                },
              ),
              Container(
                color: Colors.grey,
                width: 1,
              ),
              EntitySelectionButton(
                text: 'Doctor',
                isSelected: currentIndex.value == 2,
                onTap: () {
                  currentIndex.value = 2;
                },
              ),
            ],
          ),
          _getPageFromIndex(currentIndex.value),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const BlockExplorerPage(),
            ),
          );
          context.read<BlockCubit>().getBlocks();
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.grid_view_sharp,
          color: Colors.white,
        ),
      ),
    );
  }
}

Widget _getPageFromIndex(int index) {
  if (index == 0) {
    return const PatientPage();
  } else if (index == 1) {
    return const PharmaPage();
  } else {
    return const DoctorPage();
  }
}
