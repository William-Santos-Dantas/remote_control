import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/bindings/application_binding.dart';
import 'core/ui/controller_ui.dart';
import 'routes/home_routers.dart';

Future<void> main() async {
  await GetStorage.init('controller');
  runApp(const ControllerMainApp());

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class ControllerMainApp extends StatelessWidget {
  const ControllerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pomodoro Clock',
      theme: appThemeDataLight,
      darkTheme: appThemeDataDark,
      themeMode: ThemeMode.system,
      initialBinding: ApplicationBinding(),
      getPages: [
        ...HomeRouters.routers,
      ],
    );
  }
}
