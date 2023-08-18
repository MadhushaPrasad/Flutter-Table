import 'package:flutter/material.dart';

class CustomTable extends StatefulWidget {
  List<TableCell> tableHead;
  List<TableCell> tableBody;

  CustomTable({super.key, required this.tableHead, required this.tableBody});

  @override
  State<StatefulWidget> createState() {
    return _CustomTableState();
  }
}

class _CustomTableState extends State<CustomTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Table(
                border: TableBorder.all(
                  color: Colors.white30,
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                      ),
                      children: [
                        //get single data of tableHeadData list by using map function
                        ...widget.tableHead.map((e) => e).toList(),
                      ]),
                  ...List.generate(
                    widget.tableBody.length,
                    (index) => TableRow(
                      children: [
                        ...tableBodyRowGenerator(index),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }

  List<TableCell> tableBodyRowGenerator(int index) {
    return [
      ...widget.tableBody.map((e) => e).toList(),
    ];
  }
}
