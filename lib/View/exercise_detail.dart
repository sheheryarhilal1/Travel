import 'package:flutter/material.dart';
import 'package:style/model/exercise_model.dart';
// import '../models/exercise_model.dart';

class ExerciseDetailView extends StatelessWidget {
  final Exercise exercise;

  const ExerciseDetailView({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(exercise.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(exercise.imageUrl),
            SizedBox(height: 16),
            Text(exercise.description, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
