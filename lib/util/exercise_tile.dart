import 'package:flutter/material.dart';
import 'package:mobel_geming/pages/speaking.dart'; // Import halaman detail exercise

class ExerciseTile extends StatelessWidget {
  final IconData icon;
  final String exerciseName;
  final int numberofExercises;
  final Color color;

  const ExerciseTile({
    Key? key,
    required this.icon,
    required this.exerciseName,
    required this.numberofExercises,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Tambahkan GestureDetector untuk menangani onTap
      onTap: () {
        // Navigasi ke halaman detail "Speaking Skills"
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExerciseDetailPage(
              title: exerciseName,
              description: 'Latihan Berbicara (Speaking Practice) adalah kegiatan yang dirancang untuk membantu seseorang memperbaiki dan mengembangkan kemampuan berbicara mereka dalam bahasa tertentu. Kemampuan berbicara merupakan salah satu komponen penting dalam kemampuan berbahasa yang mencakup pemahaman, berbicara, membaca, dan menulis. Latihan berbicara dapat dilakukan dalam berbagai konteks, termasuk pembelajaran bahasa asing, komunikasi sehari-hari, presentasi, dan berbicara di depan umum. $exerciseName.',
              imageUrl: 'https://tenrycolle.com/wp-content/uploads/2022/09/speaking-ability-1-edited.jpg',
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      color: color,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exerciseName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '$numberofExercises Exercises',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
      ),
    );
  }
}
