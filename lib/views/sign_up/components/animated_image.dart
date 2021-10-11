import 'package:flutter/cupertino.dart';

class AnimatedImage extends StatefulWidget {
  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> animation = Tween<Offset>(
          begin: Offset.zero, end: Offset(0, 0.08))
      .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/clouds.png'),
        SlideTransition(
          position: animation,
          child: Image.asset('assets/rocket_person.png'),
        )
      ],
    );
  }
}
