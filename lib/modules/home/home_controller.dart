import 'package:get/get.dart';
import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';

import '../../lg_signal_codes.dart';

class HomeController extends GetxController{
  void _emmit(String json) async {
    //final _map = jsonDecode(json);

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
