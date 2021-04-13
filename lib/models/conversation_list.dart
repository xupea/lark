import 'package:flutter/material.dart';

class Conversation {
  String name;
  String avatar;
  String preview;
  String time;

  Conversation({this.name, this.preview, this.time, this.avatar});
}

class ConversationListModel extends ChangeNotifier {
  List<Conversation> conversations = List<Conversation>.generate(
      100,
      (i) => Conversation(
            name: [
              "Test Conversation 1",
              "Test Conversation 2",
              "Test Conversation 3",
              "Test Conversation 4",
              "Test Conversation 5"
            ][i % 4],
            avatar: [
              "A",
              "B",
              "C",
              "D",
              "E",
              "F",
              "G",
              "H",
              "I",
              "J",
              "K"
            ][i % 10],
            preview:
                "Hi, I'm Reminder, I can help you create and manage reminders:-@Reminder in group chat to set a reminder for the group. -Directly message me in private chat to set a reminder. ",
            time: "Mar 20, 2022",
          ));

  int _selectedIndex = 0;

  set selectedIndex(int newIndex) {
    _selectedIndex = newIndex;

    notifyListeners();
  }

  get selectedIndex {
    return _selectedIndex;
  }
}
