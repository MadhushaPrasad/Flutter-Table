import 'package:flutter/material.dart';
import 'package:fluttertable/components/customTable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> usersname = ["user1", "user2", "user3", "user4", "user5"];

  //create a method for table head TableCell widget with attaching a text widget from the usersname list
  List<TableCell> tableHead() {
    List<TableCell> tableHead = [];
    for (var i = 0; i < usersname.length; i++) {
      tableHead.add(
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(usersname[i]),
          ),
        ),
      );
    }

    tableHead.add(
      const TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(""),
        ),
      ),
    );

    return tableHead;
  }

  //create a method for table body TableCell widget with attaching a text widget from the usersname list
  List<TableCell> tableBody() {
    List<TableCell> tableBody = [];
    for (var i = 0; i < usersname.length; i++) {
      tableBody.add(
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(usersname[i]),
          ),
        ),
      );
    }

    //add two button to the table body as edit and delete
    tableBody.add(
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
                child: const Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
              ),

              //add a delete button with red color
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return tableBody;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomTable(
        tableHead: tableHead(),
        tableBody: tableBody(),
      ),
    );
  }
}
