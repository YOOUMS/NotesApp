import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notes/model/dummy_data.dart';
import 'package:notes/model/note.dart';
import 'package:notes/Helpers/NoteFunctions.dart';

class AddNoteWidget extends StatelessWidget {
  final titleController = TextEditingController();
  final textController = TextEditingController();
  final roleController = TextEditingController();

  List<String?>? items;
  String? SeletedItem;
  AddNoteWidget() {}
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 31, 26, 56),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 20,
              margin: EdgeInsets.all(MediaQuery.of(context).size.height / 40),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                onPressed: () => NoteMethods.AddNote(titleController.text,
                    textController.text, roleController.text),
                child: Text(
                  "Add",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.height / 40),
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 20,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                onPressed: null,
                child: Text(
                  "Cancel",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Color.fromARGB(255, 234, 215, 209))),
      title: Align(
        alignment: Alignment.center,
        child: Text(
          "Add Note",
          style: TextStyle(color: Colors.white),
        ),
      ),
      content: Expanded(
        child: Container(
          // height: (MediaQuery.of(context).size.height / 4) + 13,
          // height: MediaQuery.of(context).size.height / 3 + 79,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height / 25),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 215, 209),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: titleController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Title", border: InputBorder.none),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height / 25),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 215, 209),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: roleController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Role", border: InputBorder.none),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(
                //     bottom: MediaQuery.of(context).size.height / 25),
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 215, 209),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: textController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Text", border: InputBorder.none),
                ),
              ),

              // Container(
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 234, 215, 209),
              //       borderRadius: BorderRadius.circular(10)),
              //   width: double.infinity,
              //   child: DropdownButton<String>(
              //     value: SeletedItem,
              //     items: items
              //         ?.map((item) => DropdownMenuItem<String>(
              //             value: item, child: Text(item ?? "others")))
              //         .toList(),
              //    onChanged: (String? newValue) {
              //     setState(() {
              //       SeletedItem = newValue!;
              //     });
              //   },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
