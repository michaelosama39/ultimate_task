class BillItemModel {
  String? bILLAMT;
  String? bILLDATE;
  String? bILLNO;
  String? bILLSRL;
  String? bILLTIME;
  String? bILLTYPE;
  String? cSTMRADDRSS;
  String? cSTMRAPRTMNTNO;
  String? cSTMRBUILDNO;
  String? cSTMRFLOORNO;
  String? cSTMRNM;
  String? dLVRYAMT;
  String? dLVRYSTATUSFLG;
  String? lATITUDE;
  String? lONGITUDE;
  String? mOBILENO;
  String? rGNNM;
  String? tAXAMT;

  BillItemModel(
      {this.bILLAMT,
        this.bILLDATE,
        this.bILLNO,
        this.bILLSRL,
        this.bILLTIME,
        this.bILLTYPE,
        this.cSTMRADDRSS,
        this.cSTMRAPRTMNTNO,
        this.cSTMRBUILDNO,
        this.cSTMRFLOORNO,
        this.cSTMRNM,
        this.dLVRYAMT,
        this.dLVRYSTATUSFLG,
        this.lATITUDE,
        this.lONGITUDE,
        this.mOBILENO,
        this.rGNNM,
        this.tAXAMT});

  BillItemModel.fromJson(Map<String, dynamic> json) {
    bILLAMT = json['BILL_AMT'];
    bILLDATE = json['BILL_DATE'];
    bILLNO = json['BILL_NO'];
    bILLSRL = json['BILL_SRL'];
    bILLTIME = json['BILL_TIME'];
    bILLTYPE = json['BILL_TYPE'];
    cSTMRADDRSS = json['CSTMR_ADDRSS'];
    cSTMRAPRTMNTNO = json['CSTMR_APRTMNT_NO'];
    cSTMRBUILDNO = json['CSTMR_BUILD_NO'];
    cSTMRFLOORNO = json['CSTMR_FLOOR_NO'];
    cSTMRNM = json['CSTMR_NM'];
    dLVRYAMT = json['DLVRY_AMT'];
    dLVRYSTATUSFLG = json['DLVRY_STATUS_FLG'];
    lATITUDE = json['LATITUDE'];
    lONGITUDE = json['LONGITUDE'];
    mOBILENO = json['MOBILE_NO'];
    rGNNM = json['RGN_NM'];
    tAXAMT = json['TAX_AMT'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BILL_AMT'] = bILLAMT;
    data['BILL_DATE'] = bILLDATE;
    data['BILL_NO'] = bILLNO;
    data['BILL_SRL'] = bILLSRL;
    data['BILL_TIME'] = bILLTIME;
    data['BILL_TYPE'] = bILLTYPE;
    data['CSTMR_ADDRSS'] = cSTMRADDRSS;
    data['CSTMR_APRTMNT_NO'] = cSTMRAPRTMNTNO;
    data['CSTMR_BUILD_NO'] = cSTMRBUILDNO;
    data['CSTMR_FLOOR_NO'] = cSTMRFLOORNO;
    data['CSTMR_NM'] = cSTMRNM;
    data['DLVRY_AMT'] = dLVRYAMT;
    data['DLVRY_STATUS_FLG'] = dLVRYSTATUSFLG;
    data['LATITUDE'] = lATITUDE;
    data['LONGITUDE'] = lONGITUDE;
    data['MOBILE_NO'] = mOBILENO;
    data['RGN_NM'] = rGNNM;
    data['TAX_AMT'] = tAXAMT;
    return data;
  }
}
