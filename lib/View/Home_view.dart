import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style/Controller/exercise_controller.dart';
import 'package:style/View/exercise_detail.dart';

class HomeView extends StatelessWidget {
  final ExerciseController controller = Get.put(ExerciseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bodybuilding Apps')),
      body: Obx(() => ListView.builder(
        itemCount: controller.exercises.length,
        itemBuilder: (context, index) {
          final exercise = controller.exercises[index];
          return ListTile(
            leading: Image.network(exercise.imageUrl),
            title: Text(exercise.name),
            subtitle: Text(exercise.description),
            onTap: () => Get.to(() => ExerciseDetailView(exercise: exercise)),
          );
        },
      )),
    );
  }
}
