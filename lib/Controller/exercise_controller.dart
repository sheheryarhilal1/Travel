import 'package:get/get.dart';
import 'package:style/Utils/Dummy_data.dart';
import 'package:style/model/exercise_model.dart';


class ExerciseController extends GetxController {
  var exercises = <Exercise>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchExercises();
  }

  void fetchExercises() {
    exercises.value = dummyExercises;
  }
}
