import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddNoteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.height / 15,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(10)),
          child: FlatButton(
            onPressed: null,
            child: Text(
              "Add",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 15,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
          child: FlatButton(
            onPressed: null,
            child: Text(
              "Cancel",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      title: Text("Add Note"),
      content: Container(
        height: MediaQuery.of(context).size.height / 6,
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
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 234, 215, 209),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                textAlign: TextAlign.center,
                decoration:
                    InputDecoration(hintText: "Text", border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}
