import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:file_cryptor/file_cryptor.dart';
import 'package:ipfs_client_flutter/ipfs_client_flutter.dart';

part 'attachment_state.dart';
part 'attachment_cubit.freezed.dart';

class AttachmentCubit extends Cubit<AttachmentState> {
  AttachmentCubit() : super(AttachmentState.initial());

  IpfsClient ipfsClient = IpfsClient();

  Future<void> addAttachment() async {
    emit(state.copyWith(loading: true, attachment: '', status: ''));
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg'],
    );

    FileCryptor fileCryptor = FileCryptor(
      key: "XHYDC5KRQcCjdQUu+6NvurR3X7SQYh2Q",
      iv: 16,
      dir: "C:/Users/ihnis/Downloads/",
    );

    if (result != null) {
      final files = result.paths.map((path) => File(path!)).toList();
      final fullLocation = files.first.path;
      final fileNameWithExtension = fullLocation.split('\\').last;
      final fileNameWithoutExtension = fileNameWithExtension.split('.').first;
      final outputFileName = '$fileNameWithoutExtension.aes';
      final encryptedFile = await fileCryptor.encrypt(
        inputFile: fileNameWithExtension,
        outputFile: outputFileName,
      );
      final encryptedFilePath = encryptedFile.path;
      await ipfsClient.write(
        dir: '/attachments/$outputFileName',
        filePath: encryptedFilePath.replaceAll('\\', '//'),
        fileName: outputFileName,
      );

      emit(state.copyWith(
        loading: false,
        attachment: outputFileName,
        status: 'Attachment added.',
      ));
    } else {
      emit(
        state.copyWith(
            loading: false, attachment: '', status: 'Cancelled by user'),
      );
      // User canceled the picker
    }
  }

  void clear() {
    emit(AttachmentState.initial());
  }
}
