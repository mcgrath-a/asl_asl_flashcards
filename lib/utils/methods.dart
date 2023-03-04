
import 'package:asl_flashcards/notifiers/flashcards_notifier.dart';
import 'package:asl_flashcards/pages/flashcards_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

loadSession({required BuildContext context, required String topic}){

 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => FlashcardsPage())); //ability to naviagte to new page
 Provider.of<FlashcardsNotifier>(context, listen: false).setTopic(topic: topic);

}