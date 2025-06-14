import 'package:equatable/equatable.dart';

class BmiState extends Equatable {
  final double height;
  final double weight;
  final double age;
  final bool gender;

  const BmiState({
    this.height = 170,
    this.weight = 70,
    this.age = 25,
    this.gender = false,
  });

  BmiState copyWith({
    double? height,
    double? weight,
    double? age,
    bool? gender,
  }) {
    return BmiState(
      height: height ?? this.height,
      weight: weight ?? this.weight,
      age: age ?? this.age,
      gender: gender ?? this.gender,
    );
  }


  @override
  List<Object> get props => [height, weight, age, gender];
}
