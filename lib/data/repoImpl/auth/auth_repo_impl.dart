import 'package:dartz/dartz.dart';
import 'package:shopy_app/core/service/service_lecator.dart';
import 'package:shopy_app/data/model/auth/create_user_rep.dart';
import 'package:shopy_app/data/model/auth/sign_in_user_rep.dart';
import 'package:shopy_app/data/sources/auth/auth_firebase_srevice.dart';
import 'package:shopy_app/domain/repo/auth/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either> signIn(SignInUserRep signInUserRep) async {
    return await serviceLecator<AuthFirebaseSrevice>().signIn(signInUserRep);
  }

  @override
  Future<Either> signUp(CreateUserRep createUserRep) async {
    return await serviceLecator<AuthFirebaseSrevice>().signUp(createUserRep);
  }
}
