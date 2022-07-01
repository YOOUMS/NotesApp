import 'dart:developer';

import 'package:notes/model/dummy_data.dart';

import '../model/note.dart';

class NoteMethods {
  static void AddNote(String title, String text, String role) {
    log("add note $title");
    Notes.add(Note(title, text, role));
  }
}
