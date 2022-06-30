import 'package:bekhar/pages/debug_pages/design_system_page.dart';
import 'package:bekhar/theme/bekhar_themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: dayTheme(),
      darkTheme: nightTheme(),
      themeMode: ThemeMode.light,
      title: 'Bekhar',
      home: Builder(
        builder: (context) => const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.house,
            color: Get.theme.colorScheme.primary,
          ),
          onPressed: () {
            Get.to(() => const DesignSystemPage());
          },
        ),
      ),
    );
  }
}
