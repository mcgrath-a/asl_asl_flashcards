import 'package:flutter/material.dart';
import '../../animations/fade_in_animation.dart';

class TopicTile extends StatelessWidget {
  const TopicTile({
    Key? key,
    required this.topic,
  }) : super(key: key);

  final String topic;

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: GestureDetector(
        onTap: (){
          print('tile tapped $topic');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            //color:  Color.fromARGB(255, 173, 217, 236),
            color:  Theme.of(context).primaryColor,
          ),
          child: Column(
            children: [
              Expanded(
                flex:2,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),//padding along images
                    child: Image.asset('assets/images/$topic.png'),
                  )),
              Expanded(child: Text(topic)),

            ],
          ),
        ),
      ),
    );
  }
}
