import 'package:flutter/cupertino.dart';

class FlashcardsNotifier extends ChangeNotifier {
  //allows us to call method notify methods
  String topic = "";

  setTopic({required String topic}){
    this.topic = topic;

    notifyListeners();
  }

}