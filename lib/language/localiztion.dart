import 'package:flutter_application_5/language/en.dart';
import 'package:flutter_application_5/utils/my_string.dart';
import 'package:get/route_manager.dart';

import 'ar.dart';
import 'fr.dart';


class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ene: en,
        ara: ar,
        frf: fr,
      };
}
