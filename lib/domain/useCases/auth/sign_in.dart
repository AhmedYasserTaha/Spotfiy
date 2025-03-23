import 'package:dartz/dartz.dart';
import 'package:shopy_app/core/configs/usecases/use_case.dart';
import 'package:shopy_app/core/service/service_lecator.dart';
import 'package:shopy_app/data/model/auth/sign_in_user_rep.dart';
import 'package:shopy_app/domain/repo/auth/auth_repo.dart';

class SignInUseCase implements UseCase<Either, SignInUserRep> {
  @override
  Future<Either> call({SignInUserRep? params}) async {
    return serviceLecator<AuthRepo>().signIn(params!);
  }
}
