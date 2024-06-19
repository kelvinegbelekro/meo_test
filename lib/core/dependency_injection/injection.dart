import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:meo_test_app/core/dependency_injection/injection.config.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(sl);
