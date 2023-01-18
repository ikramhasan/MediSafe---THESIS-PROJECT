import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyperledger_admin/application/attachment/attachment_cubit.dart';
import 'package:hyperledger_admin/application/block/block_cubit.dart';
import 'package:hyperledger_admin/application/contract/contract_cubit.dart';
import 'package:hyperledger_admin/application/prescription/prescription_cubit.dart';
import 'package:hyperledger_admin/application/prescription_list/prescription_list_cubit.dart';
import 'package:hyperledger_admin/presentation/home/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ContractCubit>(
          create: (context) => ContractCubit(),
        ),
        BlocProvider<PrescriptionCubit>(
          create: (context) => PrescriptionCubit(),
        ),
        BlocProvider<BlockCubit>(
          create: (context) => BlockCubit(),
        ),
        BlocProvider<PrescriptionListCubit>(
          create: (context) => PrescriptionListCubit(),
        ),
        BlocProvider<AttachmentCubit>(
          create: (context) => AttachmentCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'MediSafe',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Colors.black,
          ),
          fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
