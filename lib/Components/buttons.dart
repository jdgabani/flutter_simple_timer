import 'package:flutter/material.dart';
import 'package:flutter_simple_timer/Controller/theme_controller.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
    required this.color,
    required this.fontWeight,
  }) : super(key: key);
  final String text;
  final Color color;
  final VoidCallback onTap;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    var themeController = Get.find<ThemeController>();

    return InkResponse(
      onTap: onTap,
      child: GetBuilder<ThemeController>(
          id: 1,
          builder: (context) {
            return Container(
              width: Get.width / 4,
              height: Get.height / 13,
              decoration: BoxDecoration(
                  color: themeController.isDarkMode
                      ? Colors.black
                      : Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10.0,
                        offset: const Offset(5, 5),
                        color: themeController.isDarkMode
                            ? Colors.black
                            : Colors.grey),
                    BoxShadow(
                        blurRadius: 20.0,
                        offset: const Offset(-5, -5),
                        spreadRadius: 5,
                        color: themeController.isDarkMode
                            ? const Color.fromARGB(255, 27, 27, 27)
                            : const Color.fromARGB(255, 243, 243, 243))
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: 19,
                    fontWeight: fontWeight,
                  ),
                ),
              ),
            );
          }),
    );
  }
}