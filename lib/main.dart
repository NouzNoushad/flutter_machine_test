import 'package:flutter/material.dart';
import 'package:machine_test/name_provider.dart';
import 'package:machine_test/welcome.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginProvider>(
      create: (context) => LoginProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const WelcomePage(),
      ),
    );
  }
}
