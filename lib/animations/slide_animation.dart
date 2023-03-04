import 'package:flutter/cupertino.dart';

class SlideAnimation extends StatefulWidget {
  const SlideAnimation({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  State<SlideAnimation> createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation> with SingleTickerProviderStateMixin {

  late final AnimationController _animationController;

  @override
  void initState() {
 _animationController = AnimationController(
      duration: Duration(milliseconds: 400),
      vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
