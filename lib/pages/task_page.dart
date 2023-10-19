import 'package:flutter/material.dart';
import 'package:mobel_geming/util/exercise_tile.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori'),
      ),
      body: ListView(
        children: [
          // Daftar tugas
          ExerciseTile(
            icon: Icons.favorite,
            exerciseName: 'Speaking',
            numberofExercises: 5,
            color: Colors.blue,
          ),
          ExerciseTile(
            icon: Icons.star,
            exerciseName: 'Listening',
            numberofExercises: 3,
            color: Colors.green,
          ),
          
        ],
      ),
    );
  }
}
