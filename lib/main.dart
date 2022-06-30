
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/logic/controller/theme_controller.dart';
import 'package:flutter_application_5/utils/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:flutter_application_5/routes/routes.dart';
import 'package:flutter_application_5/view/screen/error_handle.dart';
import 'package:get_storage/get_storage.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  // await Firebase.initializeApp(
  // );
  customeErrorScreen();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Bassam Soft",
        debugShowCheckedModeBanner: false,
         localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    const Locale('ar', 'AR'), // Arabic, no country code
  ],/////
        theme: ThemesApp.light,
        darkTheme: ThemesApp.dark,
        themeMode: ThemeController().themeDataGet,
         initialRoute: AppRoutes.mainScreen
       ,
      getPages: AppRoutes.routes,
      );
  }
}
