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
                      Switch(
                        value: true,
                        onChanged: (value) {},
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
                          onPress: () {},
                        ),
                      ),
                      ShadowedIconButton(
                        icon: const Icon(Icons.home),
                        onPress: () {},
                      ),
                      Transform.translate(
                        offset: const Offset(0, 20),
                        child: ShadowedIconButton(
                          icon: const Icon(Icons.power_settings_new),
                          onPress: () {},
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
                              onPress: () {},
                            ),
                            const SizedBox.shrink(),
                            ArrowButton(
                              icon: Icons.arrow_left_rounded,
                              onPress: () {},
                            ),
                            OkButton(
                              onPress: () {},
                            ),
                            ArrowButton(
                              icon: Icons.arrow_right_rounded,
                              onPress: () {},
                            ),
                            const SizedBox.shrink(),
                            ArrowButton(
                              icon: Icons.arrow_drop_down_rounded,
                              onPress: () {},
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
                          onPress: () {},
                        ),
                      ),
                      ShadowedIconButton(
                        icon: const Icon(Icons.volume_off),
                        onPress: () {},
                      ),
                      Transform.translate(
                        offset: const Offset(0, -20),
                        child: ShadowedIconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPress: () {},
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
                            onPress: () {},
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
                            onPress: () {},
                          ),
                        ],
                      ),
                      VerticalButtons(
                        children: [
                          ShadowedIconButton(
                            shadowOpacity: 0,
                            icon: const Icon(Icons.expand_less),
                            onPress: () {},
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
                            onPress: () {},
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
                        onPress: () {},
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
                        onPress: () {},
                      ),
                      ShadowedIconButton(
                        padding: const EdgeInsets.all(10),
                        icon: const Icon(
                          Icons.pause,
                          size: 24,
                        ),
                        onPress: () {},
                      ),
                      ShadowedIconButton(
                        padding: const EdgeInsets.all(10),
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 24,
                        ),
                        onPress: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColoredButton(
                        color: Colors.red.shade400,
                        onPress: () {},
                      ),
                      ColoredButton(
                        color: Colors.green.shade400,
                        onPress: () {},
                      ),
                      ColoredButton(
                        color: Colors.yellow.shade400,
                        onPress: () {},
                      ),
                      ColoredButton(
                        color: Colors.blue.shade400,
                        onPress: () {},
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
