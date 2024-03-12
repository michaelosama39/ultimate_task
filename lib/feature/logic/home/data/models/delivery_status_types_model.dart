class DeliveryStatusTypesModel {
  String? tYPNM;
  String? tYPNO;

  DeliveryStatusTypesModel({this.tYPNM, this.tYPNO});

  DeliveryStatusTypesModel.fromJson(Map<String, dynamic> json) {
    tYPNM = json['TYP_NM'];
    tYPNO = json['TYP_NO'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['TYP_NM'] = tYPNM;
    data['TYP_NO'] = tYPNO;
    return data;
  }
}
