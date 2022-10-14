import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '/firebase_options.dart';
import '/screens/home_screen.dart';
import '/authentication/screens/otp_screen.dart';
import '/authentication/screens/phone_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'phone',
      routes: {
        'phone': (context) => const PhoneScreen(),
        'otp': (context) => const OtpScreen(),
        'home': (context) => const HomePage(),
      },
    );
  }
}
