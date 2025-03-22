import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopy_app/data/model/auth/create_user_rep.dart';

abstract class AuthFirebaseSrevice {
  Future<void> signUp(CreateUserRep createUserRep);
  Future<void> signIn();
}

class AuthFirebaseSreviceImmpl extends AuthFirebaseSrevice {
  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(CreateUserRep createUserRep) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: createUserRep.email,
        password: createUserRep.password,
      );
    } catch (e) {}
  }
}
