import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Slidable Example'),
      ),
      body: Slidable(
  key: const ValueKey(0),
  startActionPane: ActionPane(
    motion: const ScrollMotion(),
    dismissible: DismissiblePane(onDismissed: () {}),
    children:   [

      SlidableAction(
        onPressed:(context) {},
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        icon: Icons.delete,
        label: 'Delete',
      ),
      SlidableAction(
        onPressed:(context) {},
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        icon: Icons.share,
        label: 'Share',
      ),
      
    ],
  ),

  // The end action pane is the one at the right or the bottom side.
  endActionPane:   ActionPane(
    motion: const ScrollMotion(),
    children: [
      SlidableAction(
        // An action can be bigger than the others.
        flex: 2,
        onPressed:(context) {
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        icon: Icons.archive,
        label: 'Archive',
      ),
      SlidableAction(
        onPressed:(context) {
          
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        icon: Icons.save,
        label: 'Save',
      ),
    ],
  ),

  // The child of the Slidable is what the user sees when the
  // component is not dragged.
  child: const ListTile(title: Text('Slide me'),),
),
    );
  }
}
