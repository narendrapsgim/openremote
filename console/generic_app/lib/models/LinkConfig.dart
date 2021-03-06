
import 'package:json_annotation/json_annotation.dart';

import 'BaseModel.dart';

part 'LinkConfig.g.dart';

@JsonSerializable()
class LinkConfig implements BaseModel {

  final String displayText;
  final String pageLink;

  LinkConfig(this.displayText, this.pageLink);

  static LinkConfig fromJson(Map<String, dynamic> json) => _$LinkConfigFromJson(json);
  Map<String, dynamic> toJson() => _$LinkConfigToJson(this);
}
