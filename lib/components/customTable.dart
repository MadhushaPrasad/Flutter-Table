import 'package:flutter/material.dart';

class CustomTable extends StatefulWidget {
  List<String> tableHead;
  List<String> tableBody;

  CustomTable({super.key, required this.tableHead, required this.tableBody});

  @override
  State<StatefulWidget> createState() {
    return _CustomTableState();
  }
}

class _CustomTableState extends State<CustomTable> {
  late List<String> tableHeadData;
  late List<String> tableBodyData;

  _CustomTableState() {
    tableHeadData = widget.tableHead;
    tableBodyData = widget.tableBody;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Table(
          border: TableBorder.all(
            color: Colors.white30,
          ),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            const TableRow(
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Title 01"),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Title 02"),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Title 03"),
                    ),
                  )
                ]),
            ...List.generate(
              widget.tableBody.length,
              (index) => const TableRow(children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Cell 01"),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Cell 02"),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Cell 03"),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    ));
  }
}
