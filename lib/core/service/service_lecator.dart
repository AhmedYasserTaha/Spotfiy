import 'package:get_it/get_it.dart';
import 'package:shopy_app/data/repoImpl/auth/auth_repo_impl.dart';
import 'package:shopy_app/data/sources/auth/auth_firebase_srevice.dart';
import 'package:shopy_app/domain/repo/auth/auth_repo.dart';
import 'package:shopy_app/domain/useCases/auth/sing_up.dart';

final serviceLecator = GetIt.instance;

Future<void> initializeDependance() async {
  serviceLecator.registerSingleton<AuthFirebaseSrevice>(
    AuthFirebaseSreviceImmpl(),
  );
  serviceLecator.registerSingleton<AuthRepo>(AuthRepoImpl());

  serviceLecator.registerSingleton<SignUpUseCase>(SignUpUseCase());
}
