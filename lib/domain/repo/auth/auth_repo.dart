import 'package:dartz/dartz.dart';
import 'package:shopy_app/data/model/auth/create_user_rep.dart';
import 'package:shopy_app/data/model/auth/sign_in_user_rep.dart';

abstract class AuthRepo {
  Future<Either> signUp(CreateUserRep createUserRep);
  Future<Either> signIn(SignInUserRep signInUserRep);
}
