import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
//
import '../bindings.dart';
import '../utils/themes.dart';
import 'view/final_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBindings(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Simple Timer',
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme,
      home: const FinalView(),
    );
  }
}






































