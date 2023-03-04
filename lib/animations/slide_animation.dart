import 'package:flutter/cupertino.dart';
import '../enums/slide_direction.dart';

class SlideAnimation extends StatefulWidget {
  const SlideAnimation({required this.child, required this.direction, this.animate = true, Key? key, }) : super(key: key);

  final Widget child;
  final SlideDirection direction;
  final bool animate;

  @override
  State<SlideAnimation> createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation> with SingleTickerProviderStateMixin {

  late final AnimationController _animationController;


  @override
  void initState() {
 _animationController = AnimationController(
      duration: Duration(milliseconds: 4000), //can change later
      vsync: this);


 if(widget.animate){
   _animationController.forward();
 }


    super.initState();
  }

  @override
  void didUpdateWidget(covariant SlideAnimation oldWidget) {
    if(widget.animate){
      _animationController.forward();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
   dispose() {
    _animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    late final Animation<Offset> _animation;
    Tween<Offset> tween;

    switch(widget.direction){
      case SlideDirection.leftAway:
        tween = Tween<Offset>(begin:Offset(0,0), end:Offset(-1,0));
        break;
      case SlideDirection.rightAway:
        tween = Tween<Offset>(begin:Offset(0,0), end:Offset(1,0));
        break;
      case SlideDirection.leftIn:
        tween = Tween<Offset>(begin:Offset(-1,0), end:Offset(0,0));
        break;
      case SlideDirection.rightIn:
        tween = Tween<Offset>(begin:Offset(1,0), end:Offset(0,0));
        break;
      case SlideDirection.upIn:
        tween = Tween<Offset>(begin:Offset(0,1), end:Offset(0,0));
        break;
      case SlideDirection.none:
        tween = Tween<Offset>(begin:Offset(0,0), end:Offset(0,0));
        break;
    }

    _animation = tween.animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    return SlideTransition(position: _animation,
        child:widget.child,);
  }
}
