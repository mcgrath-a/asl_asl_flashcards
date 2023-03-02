import 'package:asl_flashcards/components/home_page/topic_tile.dart';
import 'package:asl_flashcards/configs/constants.dart';
import 'package:flutter/material.dart';
import '../data/signs.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String>_topics = [];

  @override
  void initState() {
    // TODO: implement initState
    for(var t in signs){
      if (!_topics.contains(t.topic)){ //if it doesnt alreadt contain topic then add it
        _topics.add(t.topic);
      }
      _topics.sort();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    final size = MediaQuery.of(context).size;
    final widthPadding = size.width * 0.04;

    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30)
          )
        ),
        toolbarHeight: size.height * 0.15,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  width: size.width *kIconPadding,
                  child: Image.asset('assets/images/Settings.png'),),
                SizedBox(height: size.width*kIconPadding,)
              ],
            ),
            Text('American Sign Language\nFlashcards' , textAlign: TextAlign.center,),
            Column(
              children: [
                SizedBox(
                    width: size.width * kIconPadding,
                    child: Image.asset('assets/images/Review.png'),),
                SizedBox(height: size.width*kIconPadding,)
              ],
            ),
          ],
        ), //title that appears at top of screem
        centerTitle: true,
        elevation: 0,


    ), //appbar
    body: Padding(
      padding:  EdgeInsets.only(left: widthPadding, right: widthPadding),

      child: CustomScrollView(

        slivers: [
           SliverAppBar(
             backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            expandedHeight:  size.height * 0.40,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding:  EdgeInsets.all(size.width * 0.1),
                child: Transform.scale(
                  scale: 1.75, // resizing image
                  child: Image.asset('assets/images/background2.png'),
                  ),
                ),

              ),
            ),

          SliverGrid(
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
          ),
            delegate: SliverChildBuilderDelegate(
              childCount: _topics.length,
                  (BuildContext context, index) {
                    return TopicTile(topic: _topics[index]);
                  },

          )
          ),

      ],
    )
    )
    ); //Scaffold


  }
}

