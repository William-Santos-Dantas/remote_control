import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';

import '../../lg_signal_codes.dart';

class HomeController extends GetxController {
  final _theme = true.obs;
  get theme => _theme.value;
  GetStorage storage = GetStorage('controller');

  @override
  void onReady() {
    if (storage.read('theme') == "light") {
      Get.changeThemeMode(ThemeMode.light);
      _theme(false);
    } else {
      Get.changeThemeMode(ThemeMode.dark);
      _theme(true);
    }
    super.onReady();
  }

  void changeTheme() {
    if (Get.isDarkMode) {
      Get.changeThemeMode(ThemeMode.light);
      storage.write('theme', 'light');
    } else {
      storage.write('theme', 'dark');
      Get.changeThemeMode(ThemeMode.dark);
    }
    _theme.toggle();
  }

  void _emmit(String json) async {
    await IrSensorPlugin.transmitString(pattern: json);
  }

  void backwards() {
    _emmit(LgSignalCodes.fastBackward);
  }

  void forward() {
    _emmit(LgSignalCodes.fastForward);
  }

  void home() {
    _emmit(LgSignalCodes.home);
  }

  void info() {
    _emmit(LgSignalCodes.info);
  }

  void mute() {
    _emmit(LgSignalCodes.mute);
  }

  void navigateDown() {
    _emmit(LgSignalCodes.navigateDown);
  }

  void navigateLeft() {
    _emmit(LgSignalCodes.navigateLeft);
  }

  void navigateRight() {
    _emmit(LgSignalCodes.navigateRight);
  }

  void navigateUp() {
    _emmit(LgSignalCodes.navigateUp);
  }

  void nextChannel() {
    _emmit(LgSignalCodes.channelUp);
  }

  void ok() {
    _emmit(LgSignalCodes.ok);
  }

  void play() {
    _emmit(LgSignalCodes.play);
  }

  void previousChannel() {
    _emmit(LgSignalCodes.channelDown);
  }

  void pause() {
    _emmit(LgSignalCodes.pause);
  }

  void turnOnOff() {
    _emmit(LgSignalCodes.turnOnOff);
  }

  void volumeDown() {
    _emmit(LgSignalCodes.volumeDown);
  }

  void volumeUp() {
    _emmit(LgSignalCodes.volumeUp);
  }

  void back() {
    _emmit(LgSignalCodes.back);
  }

  void exit() {
    _emmit(LgSignalCodes.exit);
  }

  void blue() {
    _emmit(LgSignalCodes.blue);
  }

  void green() {
    _emmit(LgSignalCodes.green);
  }

  void red() {
    _emmit(LgSignalCodes.red);
  }

  void yellow() {
    _emmit(LgSignalCodes.yellow);
  }
}
