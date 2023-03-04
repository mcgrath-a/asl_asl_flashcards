//import 'dart:async';
import 'package:asl_flashcards/animations/slide_animation.dart';
import 'package:asl_flashcards/notifiers/flashcards_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/app/custom_appbar.dart';
import '../enums/slide_direction.dart';

class FlashcardsPage extends StatefulWidget {
  const FlashcardsPage({Key? key}) : super(key: key);

  @override
  State<FlashcardsPage> createState() => _FlashcardsPageState();
}

class _FlashcardsPageState extends State<FlashcardsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Consumer<FlashcardsNotifier>(
      builder: (_, notifier, __) => Scaffold(
        //builder will run and update widget tree
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: CustomAppBar()),
        body: SlideAnimation(
          direction: SlideDirection.upIn,
          child: Center(
            child: Container(
              width: size.width * 0.9,
                height: size.height * 0.7,
                decoration: BoxDecoration(
                  color: Theme.of(context). primaryColor,
            )
      ),
          ),
        ),
      ),
    );
  }
}

