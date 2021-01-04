import 'package:json_annotation/json_annotation.dart';

part 'items.g.dart';

@JsonSerializable()
class Items {
  String id;
  double count;
  bool hideCount;

  Items(this.id, this.count, this.hideCount);

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);

  @override
  String toString() {
    return 'Items{id: $id, count: $count, hideCount: $hideCount}';
  }
}
