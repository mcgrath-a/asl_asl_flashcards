import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../notifiers/flashcards_notifier.dart';
import '../../pages/home_page.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashcardsNotifier>(
      builder: (_,notifier, __) => AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                        (route) => false);
              },
              icon: Icon(Icons.clear))
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Hero(
              tag: notifier.topic,
              child: Image.asset('assets/images/${notifier.topic}.png')),
        ),
        title: Text(notifier.topic),
      ),
    );
  }
}
