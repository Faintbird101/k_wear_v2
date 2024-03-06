import 'package:firebase_core/firebase_core.dart';
import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/screens/onboarding/onboarding.dart';
import 'package:k_wear_v2/firebase_options.dart';
import 'package:k_wear_v2/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
