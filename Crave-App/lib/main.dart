// import 'package:flutter/material.dart';
// import 'package:crave_app/screens/home_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:crave_app/screens/login_screen.dart';


import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

//void main() => runApp(MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            fontFamily: 'Didot',
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
            color: Colors.white,
          ),
          labelLarge: TextStyle(
            fontFamily: 'Didot',
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          titleMedium: TextStyle(fontFamily: 'NotoSans'),
          bodyMedium: TextStyle(fontFamily: 'NotoSans'),
        ),
      ),

      home: const LoginScreen()
    );
  }
}


