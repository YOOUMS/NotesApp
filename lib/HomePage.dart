import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notes/AddNoteWidget.dart';
import 'package:notes/NoteWidget.dart';
import 'package:notes/model/dummy_data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 31, 26, 56),
          onPressed: () {
            showDialog(context: context, builder: (context) => AddNoteWidget());
          },
          child: const SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 31, 26, 56),
                child: Text(
                  "+",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                )),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 31, 26, 56),
          title: Text("Notes"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: Notes.length,
            itemBuilder: (context, index) => NoteWidget(Notes[index])));
  }
}
