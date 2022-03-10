import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_controller/core/ui/widgets/arrow_button.dart';
import 'package:tv_controller/core/ui/widgets/circular_shadow.dart';
import 'package:tv_controller/core/ui/widgets/colored_button.dart';
import 'package:tv_controller/core/ui/widgets/ok_button.dart';
import 'package:tv_controller/core/ui/widgets/shadowed_icon_button.dart';
import 'package:tv_controller/core/ui/widgets/vertical_buttons.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: SizedBox(
              width: 250,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.light_mode,
                        color: Colors.grey,
                      ),
                      Obx(
                        () => Switch(
                          value: controller.theme,
                          onChanged: (value) {
                            controller.changeTheme();
                          },
                        ),
                      ),
                      const Icon(
                        Icons.nightlight,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.translate(
                        offset: const Offset(0, 20),
                        child: ShadowedIconButton(
                          icon: const Icon(Icons.info_outline),
                          onPress: controller.info,
                        ),
                      ),
                      ShadowedIconButton(
                        icon: const Icon(Icons.home),
                        onPress: controller.home,
                      ),
                      Transform.translate(
                        offset: const Offset(0, 20),
                        child: ShadowedIconButton(
                          icon: const Icon(Icons.power_settings_new),
                          onPress: controller.turnOnOff,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  CircularShadow(
                    child: ClipOval(
                      child: ColoredBox(
                        color: Theme.of(context).cardColor,
                        child: GridView(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsetsDirectional.zero,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          children: [
                            const SizedBox.shrink(),
                            ArrowButton(
                              icon: Icons.arrow_drop_up_rounded,
                              onPress: controller.navigateUp,
                            ),
                            const SizedBox.shrink(),
                            ArrowButton(
                              icon: Icons.arrow_left_rounded,
                              onPress: controller.navigateLeft,
                            ),
                            OkButton(
                              onPress: controller.ok,
                            ),
                            ArrowButton(
                              icon: Icons.arrow_right_rounded,
                              onPress: controller.navigateRight,
                            ),
                            const SizedBox.shrink(),
                            ArrowButton(
                              icon: Icons.arrow_drop_down_rounded,
                              onPress: controller.navigateDown,
                            ),
                            const SizedBox.shrink(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.translate(
                        offset: const Offset(0, -20),
                        child: ShadowedIconButton(
                          icon: const Icon(Icons.exit_to_app),
                          onPress: controller.exit,
                        ),
                      ),
                      ShadowedIconButton(
                        icon: const Icon(Icons.volume_off),
                        onPress: controller.mute,
                      ),
                      Transform.translate(
                        offset: const Offset(0, -20),
                        child: ShadowedIconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPress: controller.back,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VerticalButtons(
                        children: [
                          ShadowedIconButton(
                            shadowOpacity: 0,
                            icon: const Icon(Icons.volume_up),
                            onPress: controller.volumeUp,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'vol',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ShadowedIconButton(
                            shadowOpacity: 0,
                            icon: const Icon(Icons.volume_down),
                            onPress: controller.volumeDown,
                          ),
                        ],
                      ),
                      VerticalButtons(
                        children: [
                          ShadowedIconButton(
                            shadowOpacity: 0,
                            icon: const Icon(Icons.expand_less),
                            onPress: controller.nextChannel,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'ch',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ShadowedIconButton(
                            shadowOpacity: 0,
                            icon: const Icon(Icons.expand_more),
                            onPress: controller.previousChannel,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShadowedIconButton(
                        padding: const EdgeInsets.all(10),
                        icon: const Icon(
                          Icons.keyboard_arrow_left,
                          size: 24,
                        ),
                        onPress: controller.backwards,
                      ),
                      ShadowedIconButton(
                        padding: const EdgeInsets.all(10),
                        icon: Transform.translate(
                          offset: const Offset(2, 0),
                          child: const Icon(
                            Icons.play_arrow,
                            size: 24,
                          ),
                        ),
                        onPress: controller.play,
                      ),
                      ShadowedIconButton(
                        padding: const EdgeInsets.all(10),
                        icon: const Icon(
                          Icons.pause,
                          size: 24,
                        ),
                        onPress: controller.pause,
                      ),
                      ShadowedIconButton(
                        padding: const EdgeInsets.all(10),
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 24,
                        ),
                        onPress: controller.forward,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColoredButton(
                        color: Colors.red.shade400,
                        onPress: controller.red,
                      ),
                      ColoredButton(
                        color: Colors.green.shade400,
                        onPress: controller.green,
                      ),
                      ColoredButton(
                        color: Colors.yellow.shade400,
                        onPress: controller.yellow,
                      ),
                      ColoredButton(
                        color: Colors.blue.shade400,
                        onPress: controller.blue,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
