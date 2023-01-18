import 'package:freezed_annotation/freezed_annotation.dart';

part 'block.freezed.dart';
part 'block.g.dart';

@freezed
class Block with _$Block {
  const factory Block({
    required dynamic id,
    required String fingerprint,
    required List<Transaction> transactions,
  }) = _Block;

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);

  factory Block.empty() => const _Block(
        fingerprint: '',
        id: 0,
        transactions: [],
      );
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required int type,
    required String timestamp,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  factory Transaction.empty() => const _Transaction(
        timestamp: '',
        type: 0,
      );
}
