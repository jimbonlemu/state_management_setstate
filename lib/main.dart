import 'package:flutter/material.dart';
import 'package:state_management_setstate/done_module_list.dart';
import 'package:state_management_setstate/module_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management with SetState',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: ModulePage(),
    );
  }
}

class ModulePage extends StatefulWidget {
  const ModulePage({super.key});

  @override
  State<ModulePage> createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  final List<String> doneModuleList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemrograman Dengan Dart'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DoneModuleList(doneModuleList: doneModuleList,);
                  },
                ));
              },
              icon: Icon(Icons.done))
        ],
      ),
      body: ModuleList(doneModuleList: doneModuleList,),
    );
  }
}
