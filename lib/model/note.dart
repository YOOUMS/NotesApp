import 'package:flutter/material.dart';

class Note {
  String? title;
  String? text;
  String? role;
  Note.fromJson(Map Notes) {
    this.title = Notes['title'];
    this.text = Notes['text'];
    this.role = Notes['role'];
  }
  Note(this.title, this.text, this.role);
}
