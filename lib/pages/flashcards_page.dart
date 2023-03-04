import 'package:asl_flashcards/notifiers/flashcards_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class FlashcardsPage extends StatefulWidget {
  const FlashcardsPage({Key? key}) : super(key: key);

  @override
  State<FlashcardsPage> createState() => _FlashcardsPageState();
}

class _FlashcardsPageState extends State<FlashcardsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FlashcardsNotifier>(
      builder: (_, notifier, __) => Scaffold( //builder will run and update widget tree
        appBar: AppBar(
          title: Text(notifier.topic),
        ),
      ),
    );
  }
}
