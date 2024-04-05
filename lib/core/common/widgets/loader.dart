import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 15,
                  width: 20,
                  decoration: BoxDecoration(
                    color: AppPallete.cardColor[0],
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 15,
                  width: 20,
                  decoration: BoxDecoration(
                    color: AppPallete.cardColor[1],
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 15,
                  width: 20,
                  decoration: BoxDecoration(
                    color: AppPallete.cardColor[2],
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 15,
                  width: 20,
                  decoration: BoxDecoration(
                    color: AppPallete.cardColor[3],
                    shape: BoxShape.circle,
                  ),
                ),
              ]
                  .animate(
                    onPlay: (controller) => controller.repeat(reverse: true),
                    interval: 200.ms,
                  )
                  .slideY(
                    begin: 0,
                    end: -2,
                    delay: 400.ms,
                    curve: Curves.decelerate,
                  )),
        ],
      ),
    );
  }
}
