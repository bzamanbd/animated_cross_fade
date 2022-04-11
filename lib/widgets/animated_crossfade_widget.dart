import 'package:animated_cross_fade/theme/color_palette.dart';
import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool val = true;
  void picChange() {
    setState(() {
      val = !val;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.center,
          children: [
            Container(
            height: size.height / 2,
            width: size.width,
            color: ColorPalette.secondaryColor,
            child: Center(
              child: AnimatedCrossFade(
                  firstChild: Image.asset('assets/images/termbg1.jpg',
                      height: size.height / 3),
                  secondChild: Image.asset('assets/images/termbg2.jpg',
                      height: size.height / 3),
                  crossFadeState:
                      val ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                  duration: const Duration(seconds: 2))),
    ),
    ElevatedButton(
      onPressed: picChange,
      child: const Text('Click to Change Pic')
      )
          ],
        ),
    );
  }
}
