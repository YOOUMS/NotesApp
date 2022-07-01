import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notes/model/dummy_data.dart';

class DrawerWidget extends StatelessWidget {
  List<String>? roles;
  DrawerWidget() {
    this.roles = Notes.map((e) => e.role ?? "others").toList();
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromARGB(255, 31, 26, 56),
        width: MediaQuery.of(context).size.width / 2,
        child: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "LABEL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color.fromARGB(255, 234, 215, 209)),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                        itemCount: roles?.length,
                        itemBuilder: (context, index) => ListTile(
                              title: Container(
                                padding: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.white, width: 1))),
                                child: Text(
                                  roles?[index] ?? "other",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
