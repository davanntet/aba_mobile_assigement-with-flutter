import 'package:aba_mobile_assigement/routes/IndexRoute.dart';
import 'package:aba_mobile_assigement/utils/ColorAsset.dart';
import 'package:flutter/material.dart';

import 'components/BotttomApp.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteProvider.generateRoute,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: ColorAsset.primaryColor,
          secondary: ColorAsset.secondaryColor,
          error: Colors.red,

          onSurface: Colors.white,
        ),
      ),
      home: IndexApp(),
    );
  }
}


