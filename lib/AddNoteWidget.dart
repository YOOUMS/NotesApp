import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notes/model/dummy_data.dart';

class AddNoteWidget extends StatelessWidget {
  List<String?>? items;
  String? SeletedItem;
  AddNoteWidget() {
    this.SeletedItem = (Notes.map((e) => e.role)).toList()[0] ?? "Others";
    this.items = Notes.map((e) => e.role).toList();
  }
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
                onPressed: null,
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
      content: Container(
        // height: (MediaQuery.of(context).size.height / 4) + 13,
        height: MediaQuery.of(context).size.height / 7 + 17,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 25),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 234, 215, 209),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "Title", border: InputBorder.none),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(
              //     bottom: MediaQuery.of(context).size.height / 25),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 234, 215, 209),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                textAlign: TextAlign.center,
                decoration:
                    InputDecoration(hintText: "Text", border: InputBorder.none),
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
    );
  }
}
