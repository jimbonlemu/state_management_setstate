import 'package:flutter/material.dart';

class DoneModuleList extends StatefulWidget {
  final List<String> doneModuleList;
  const DoneModuleList({super.key, required this.doneModuleList});

  @override
  State<DoneModuleList> createState() => _DoneModuleListState();
}

class _DoneModuleListState extends State<DoneModuleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Done Module List'),
      ),
      body: ListView.builder(
        itemCount: widget.doneModuleList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.doneModuleList[index]),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            setState(() {
              widget.doneModuleList.clear();
            });
          },
          child: Icon(Icons.delete)),
    );
  }
}
