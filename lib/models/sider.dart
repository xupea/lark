import 'package:flutter/material.dart';

class SiderModel extends ChangeNotifier {
  List<IconData> items = [
    Icons.chat_outlined,
    Icons.videocam_outlined,
    Icons.date_range_outlined,
    Icons.folder_outlined,
    Icons.contacts_outlined,
    Icons.extension_outlined,
  ];

  int _selectedIndex = -1;

  set selectedIndex(int newIndex) {
    _selectedIndex = newIndex;

    notifyListeners();
  }

  get selectedIndex {
    return _selectedIndex;
  }
}
