import 'package:shopy_app/core/service/service_lecator.dart';
import 'package:shopy_app/data/model/auth/create_user_rep.dart';
import 'package:shopy_app/data/sources/auth/auth_firebase_srevice.dart';
import 'package:shopy_app/domain/repo/auth/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(CreateUserRep createUserRep) async {
    await serviceLecator<AuthFirebaseSrevice>().signUp(createUserRep);
  }
}
