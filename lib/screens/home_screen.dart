import 'package:flutter/material.dart';
import 'package:estudos_flutter/components/task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showTask = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
        leading: Container(),
      ),
      body: AnimatedOpacity(
        opacity: showTask ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        child: ListView(
          children: const [
            Task('Learn Flutter', difficulty: 5),
            Task('Medidate',
                difficulty: 5,
                taskImage:
                    'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg'),
            Task('Cycling',
                difficulty: 2,
                taskImage:
                    'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showTask = !showTask;
          });
        },
        child: Icon(showTask == true ? Icons.visibility_off : Icons.visibility),
      ),
    );
  }
}
