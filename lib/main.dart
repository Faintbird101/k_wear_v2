import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/screens/splash/splash.screen.dart';
import 'package:k_wear_v2/firebase_options.dart';
import 'package:k_wear_v2/utils/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  // final WidgetsBinding widgetsBinding =
  WidgetsFlutterBinding.ensureInitialized();
  //  -- Getx Local Storage --
  await GetStorage.init();

  //  --Await Splash until other items are loaded
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //  --Shared Preferences
  final prefs = await SharedPreferences.getInstance();
  final isFirstTime = prefs.getBool('isFirstTime') ?? false;

  // -- Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // .then(
  //   (value) => Get.put(AuthenticationRepository()),
  // );
  runApp(MyApp(isFirstTime: isFirstTime));
}

class MyApp extends StatelessWidget {
  final bool isFirstTime;
  const MyApp({
    super.key,
    required this.isFirstTime,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      home: const SplashScreen(),
      // isFirstTime ? const Mainpage() : const
    );
  }
}
