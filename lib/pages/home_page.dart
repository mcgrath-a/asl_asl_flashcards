import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


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
        title: Text('American Sign Language Flashcards'), //title that appears at top of screem
        centerTitle: true,
        elevation: 0,

    ), //appbar
    body: Padding(
      padding:  EdgeInsets.only(left: widthPadding, right: widthPadding),

      child: CustomScrollView(
        slivers: [
           SliverAppBar(
            expandedHeight:  size.height * 0.40,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding:  EdgeInsets.all(size.width * 0.1),
                child: Text("home page image"),
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
                  (BuildContext context, index) {
                    return Container(
                      color: Colors.red,
                    );
                  },
          )
          ),
      ],
    )
    )
    ); //Scaffold


  }
}
