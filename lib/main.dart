import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mycrud/firebase_options.dart';
import 'package:mycrud/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const myCrud());
}

class myCrud extends StatelessWidget {
  const myCrud({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
