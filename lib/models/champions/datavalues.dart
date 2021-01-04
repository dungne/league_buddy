import 'package:json_annotation/json_annotation.dart';

part 'datavalues.g.dart';

@JsonSerializable()
class Datavalues {
  Datavalues();

  factory Datavalues.fromJson(Map<String, dynamic> json) =>
      _$DatavaluesFromJson(json);

  Map<String, dynamic> toJson() => _$DatavaluesToJson(this);

  @override
  String toString() {
    return 'Datavalues{}';
  }
}
