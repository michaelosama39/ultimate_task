import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String message;
  final int errorNo;

  const ErrorMessageModel({
    required this.message,
    required this.errorNo,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      message: json["ErrMsg"],
      errorNo: json["ErrNo"],
    );
  }

  @override
  List<Object?> get props => [message, errorNo];
}
