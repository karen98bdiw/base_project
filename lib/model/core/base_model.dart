class BaseModel {
  final String? property;

  BaseModel({this.property});

  factory BaseModel.fromJson(json) {
    return BaseModel(property: json["property"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();
    data["property"] = this.property;
    return data;
  }
}
