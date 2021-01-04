import 'package:json_annotation/json_annotation.dart';
import 'package:league_buddy/models/champion_data.dart';

part 'champion_response.g.dart';

@JsonSerializable()
class ChampionResponse {
  String type;
  String format;
  String version;
  ChampionData data;

  ChampionResponse(this.type, this.format, this.version, this.data);

  factory ChampionResponse.fromJson(Map<String, dynamic> json) =>
      _$ChampionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChampionResponseToJson(this);

  @override
  String toString() {
    return 'ChampionListResponse{type: $type, format: $format, version: $version, data: $data}';
  }
}
