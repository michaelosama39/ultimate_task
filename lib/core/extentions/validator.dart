import 'package:flutter/material.dart';
import 'package:ultimate_task/core/res/app_strings.dart';

import '../localization/localization_methods.dart';

extension Validator on String {
  String? noValidate() {
    return null;
  }

  String? validateEmpty(BuildContext context, {String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context, AppStrings.fillField);
    }
    return null;
  }

  String? validateIBAN(BuildContext context, {String? message}) {
    if (!RegExp(
        r'^[a-zA-Z]{2}[0-9]{2}[a-zA-Z0-9]{4}[0-9]{7}([a-zA-Z0-9]?){0,16}')
        .hasMatch(this)) {
      return message ?? tr(context, "ibanValidation");
    }
    return null;
  }

  String? validatePassword(BuildContext context, {String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context, "fillField");
    } else if (length < 6) {
      return message ?? tr(context, "passValidation");
    }
    return null;
  }

  String? validateEmail(BuildContext context, {String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context, "fillField");
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this)) {
      return message ?? tr(context, "mailValidation");
    }
    return null;
  }

  String? validateEmailORNull(BuildContext context, {String? message}) {
    if (trim().isNotEmpty) {
      if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this)) {
        return message ?? tr(context, "mailValidation");
      }
    }
    return null;
  }

  String? validatePhone(BuildContext context, {String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context, "fillField");
    } else if (!RegExp(
                r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
            .hasMatch(this) ||
        length < 10) {
      return message ?? tr(context, "phoneValidation");
    }
    return null;
  }

  String? validatePasswordConfirm(BuildContext context,
      {required String pass, String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context, "fillField");
    } else if (this != pass) {
      return message ?? tr(context, "confirmValidation");
    }
    return null;
  }
}

