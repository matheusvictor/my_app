import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text('My Tasks')),
            body: ListView(
              children: const [
                Task('Learn Flutter'),
                Task('Learn Libras'),
                Task('Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem '
                    'Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem'
                    ' Ipsum Lorem Ipsum Lorem Ipsum'),
                Task('Lorem Ipsum'),
                Task('Lorem Ipsum'),
                Task('Lorem Ipsum'),
                Task('Lorem Ipsum'),
                Task('Lorem Ipsum'),
                Task('Lorem Ipsum'),
                Task('Lorem Ipsum'),
                Task('Lorem Ipsum'),
              ],
            )));
  }
}

class Task extends StatelessWidget {
  final String taskName;

  const Task(this.taskName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(color: Colors.grey, width: 72, height: 100),
                  Container(
                    width: 200,
                    child: Text(
                      taskName,
                      style: const TextStyle(
                          fontSize: 18, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: Icon(Icons.arrow_drop_up))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
