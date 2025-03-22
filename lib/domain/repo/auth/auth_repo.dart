import 'package:shopy_app/data/model/auth/create_user_rep.dart';

abstract class AuthRepo {
  Future<void> signUp(CreateUserRep createUserRep);
  Future<void> signIn();
}
