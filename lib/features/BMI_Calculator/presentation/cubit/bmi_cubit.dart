

import 'package:flutter_bloc/flutter_bloc.dart';
import 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiState());

  void updateHeight(double newHeight) {
    emit(state.copyWith(height: newHeight));
  }

  void updateWeight(double newWeight) {
    emit(state.copyWith(weight: newWeight));
  }

  void updateAge(double newAge) {
    emit(state.copyWith(age: newAge));
  }

  void updateGender(bool newGender) {
    emit(state.copyWith(gender:newGender));
  }

  double calculateBMI() {
    double heightInMeters = state.height / 100;
    return state.weight / (heightInMeters * heightInMeters);
  }

  void reset() {
    emit(const BmiState());
  }
}
