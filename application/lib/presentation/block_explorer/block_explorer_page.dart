import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyperledger_admin/application/block/block_cubit.dart';

class BlockExplorerPage extends StatelessWidget {
  const BlockExplorerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Block Explorer')),
      body: BlocBuilder<BlockCubit, BlockState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          }
          return ListView.builder(
            itemCount: state.blocks.length,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('ID: ${state.blocks[index].id}'),
                      Text('Fingerprint: ${state.blocks[index].fingerprint}'),
                      Text('Total transactions: ${state.blocks.length}'),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
