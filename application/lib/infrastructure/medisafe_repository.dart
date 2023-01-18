import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hyperledger_admin/domain/access_request.dart';
import 'package:hyperledger_admin/domain/block.dart';
import 'package:hyperledger_admin/domain/contract.dart';
import 'package:hyperledger_admin/domain/failure.dart';
import 'package:hyperledger_admin/domain/login_info.dart';
import 'package:http/http.dart' as http;
import 'package:hyperledger_admin/domain/prescription_list_request.dart';
import 'package:hyperledger_admin/domain/prescription_request.dart';
import 'package:hyperledger_admin/domain/prescription_response.dart';
import 'package:hyperledger_admin/domain/user_with_pass.dart';
import 'package:hyperledger_admin/utils/urls.dart';

class MedisafeRepository {
  MedisafeRepository._();
  static final instance = MedisafeRepository._();

  Future<Either<Failure, LoginInfo>> prescribeUser(
    PrescriptionRequest prescription,
  ) async {
    try {
      print(jsonEncode(prescription.toJson()));
      final uri = Uri.parse('${ApiUrls.doctorUrl}/prescribe');
      final response = await http.post(
        uri,
        body: jsonEncode(prescription.toJson()),
        headers: {'Content-Type': 'application/json'},
      );

      final json = jsonDecode(response.body);
      print(json);

      final loginResponse = LoginInfoResponse.fromJson(json);

      return right(loginResponse.loginInfo);
    } catch (e) {
      print(e);
      return left(Failure.general());
    }
  }

  Future<Either<Failure, List<Contract>>> getContracts() async {
    try {
      final uri = Uri.parse('${ApiUrls.doctorUrl}/contract-types');
      final response = await http.post(
        uri,
        body: {'contractType': 'privacy'},
      );

      final json = jsonDecode(response.body);

      final contractList =
          (json as List).map((e) => Contract.fromJson(e)).toList();
      print(contractList);
      return right(contractList);
    } catch (e) {
      print(e);
      return left(Failure.general());
    }
  }

  Future<Either<Failure, PrescriptionResponse>> getPrescriptions(
    UserWithPass user,
  ) async {
    try {
      final uri = Uri.parse('${ApiUrls.medisafeUrl}/contracts');
      final request = PrescriptionListRequest(user: user);

      final response = await http.post(
        uri,
        body: jsonEncode(request.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
      print(jsonEncode(request.toJson()));

      final json = jsonDecode(response.body);
      print(json);

      final prescription = PrescriptionResponse.fromJson(json);
      print(prescription);
      return right(prescription);
    } catch (e) {
      print(e);
      return left(Failure.general());
    }
  }

  Future<Either<Failure, PrescriptionResponse>> grantAccess(
    AccessRequest access,
  ) async {
    try {
      final grantUri = Uri.parse('${ApiUrls.medisafeUrl}/file-claim');

      final grantResponse = await http.post(
        grantUri,
        body: jsonEncode(access.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
      print(jsonEncode(access.toJson()));

      final grantJson = jsonDecode(grantResponse.body);
      print(grantJson);

      final uri = Uri.parse('${ApiUrls.medisafeUrl}/contracts');
      final request = PrescriptionListRequest(user: access.user);

      final response = await http.post(
        uri,
        body: jsonEncode(request.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
      print(jsonEncode(request.toJson()));

      final json = jsonDecode(response.body);
      print(json);

      final prescription = PrescriptionResponse.fromJson(json);
      print(prescription);
      return right(prescription);
    } catch (e) {
      print(e);
      return left(Failure.general());
    }
  }

  Future<Either<Failure, List<Block>>> getBlocks() async {
    try {
      final uri = Uri.parse('${ApiUrls.medisafeUrl}/blocks');
      final response = await http.post(
        uri,
        body: jsonEncode({'noOfLastBlocks': 20}),
        headers: {'Content-Type': 'application/json'},
      );

      final json = jsonDecode(response.body);
      print(json);

      final blockList = (json as List).map((e) => Block.fromJson(e)).toList();
      print(blockList);
      return right(blockList);
    } catch (e) {
      print(e);
      return left(Failure.general());
    }
  }
}
