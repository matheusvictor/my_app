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
              children: [
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

class Task extends StatefulWidget {
  final String taskName;

  const Task(this.taskName, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

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
            Column(
              children: [
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
                          widget.taskName,
                          style: const TextStyle(
                              fontSize: 18, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              level++;
                            });
                          },
                          child: Icon(Icons.arrow_drop_up))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: level / 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Level: $level',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
