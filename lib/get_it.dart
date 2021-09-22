import 'package:baseproj/provider/base_provider.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<BaseProvider>(BaseProvider());
}
