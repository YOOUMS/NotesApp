import 'package:flutter/material.dart';

class Note {
  String? title;
  String? text;
  String? role;
  Note(Map Notes) {
    this.title = Notes['title'];
    this.text = Notes['text'];
    this.role = Notes['role'];
  }
}
