import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_setstate/done_module_provider.dart';

class DoneModuleList extends StatelessWidget {
  const DoneModuleList({super.key});

  @override
  Widget build(BuildContext context) {
    final doneModuleList =
        Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;
    return Consumer<DoneModuleProvider>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Done Module List'),
        ),
        body: ListView.builder(
          itemCount: doneModuleList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(doneModuleList[index]),
              trailing: ElevatedButton(
                  onPressed: () {
                    value.cleanerAt(index);
                  },
                  child: Icon(Icons.delete)),
            );
          },
        ),
        floatingActionButton:
            ElevatedButton(onPressed: () {}, child: Icon(Icons.delete)),
      );
    });
  }
}
