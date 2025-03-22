import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopy_app/data/model/auth/create_user_rep.dart';

abstract class AuthFirebaseSrevice {
  Future<Either> signUp(CreateUserRep createUserRep);
  Future<void> signIn();
}

class AuthFirebaseSreviceImmpl extends AuthFirebaseSrevice {
  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either> signUp(CreateUserRep createUserRep) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: createUserRep.email,
        password: createUserRep.password,
      );
      return Right('sing up was successful');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = 'the password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email.';
      }
      return left(message);
    }
  }
}
