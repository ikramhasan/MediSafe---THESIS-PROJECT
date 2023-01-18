part of 'attachment_cubit.dart';

@freezed
class AttachmentState with _$AttachmentState {
  const factory AttachmentState({
    required bool loading,
    required String attachment,
    required String status,
  }) = _AttachmentState;

  factory AttachmentState.initial() => const _AttachmentState(
        attachment: '',
        loading: false,
        status: '',
      );
}
