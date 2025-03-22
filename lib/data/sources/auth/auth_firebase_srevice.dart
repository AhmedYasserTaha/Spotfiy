import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopy_app/data/model/auth/create_user_rep.dart';

abstract class AuthFirebaseSrevice {
  Future<Either<String, String>> signUp(CreateUserRep createUserRep);
  Future<Either<String, String>> signIn(String email, String password);
}

class AuthFirebaseSreviceImmpl extends AuthFirebaseSrevice {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Either<String, String>> signUp(CreateUserRep createUserRep) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: createUserRep.email,
        password: createUserRep.password,
      );
      return const Right('Sign-up was successful');
    } on FirebaseAuthException catch (e) {
      String message = 'An error occurred';
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email.';
      }
      return Left(message);
    }
  }

  @override
  Future<Either<String, String>> signIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Right('Sign-in was successful');
    } on FirebaseAuthException catch (e) {
      String message = 'An error occurred';
      if (e.code == 'user-not-found') {
        message = 'No user found with this email.';
      } else if (e.code == 'wrong-password') {
        message = 'Incorrect password.';
      }
      return Left(message);
    }
  }
}
