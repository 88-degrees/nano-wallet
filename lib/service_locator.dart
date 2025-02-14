import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'package:natrium_wallet/model/db/appdb.dart';
import 'package:natrium_wallet/model/vault.dart';
import 'package:natrium_wallet/network/account_service.dart';
import 'package:natrium_wallet/util/hapticutil.dart';
import 'package:natrium_wallet/util/biometrics.dart';
import 'package:natrium_wallet/util/sharedprefsutil.dart';

GetIt sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerLazySingleton<AccountService>(() => AccountService());
  sl.registerLazySingleton<DBHelper>(() => DBHelper());
  sl.registerLazySingleton<HapticUtil>(() => HapticUtil());
  sl.registerLazySingleton<BiometricUtil>(() => BiometricUtil());
  sl.registerLazySingleton<Vault>(() => Vault());
  sl.registerLazySingleton<SharedPrefsUtil>(() => SharedPrefsUtil());
  sl.registerLazySingleton<Logger>(() => Logger(printer: PrettyPrinter()));
}