import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/color_manager.dart';
import '../res/text_style_manager.dart';
import '../res/values_manager.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hint;
  final bool autoFocus;
  final int? max;
  final EdgeInsets? margin;
  final EdgeInsets? contentPadding;
  final TextInputType? type;
  final TextInputAction? action;
  final BorderRadius? radius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final Function()? onTap;
  final Color? enableBorderColor;
  final Color? disabledBorderColor;
  final Color? focusBorderColor;
  final Color? fillColor;
  final Color? hintColor;
  final Color? textColor;
  final int? maxLength;
  final Function(String? value) validate;
  final FieldTypes? fieldTypes;
  final Function()? onSubmit;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autoValidateMode;
  final String? fontFamily;
  final TextDirection? textDirection;
  final bool enableTitle;

  const CustomTextField(
      {super.key,
      this.hint,
      this.fieldTypes = FieldTypes.normal,
      this.controller,
      this.focusNode,
      this.margin,
      this.autoFocus = false,
      this.contentPadding,
      this.inputFormatters,
      this.type,
      this.onTap,
      this.radius,
      this.max,
      this.maxLength,
      this.suffixWidget,
      this.prefixWidget,
      this.textColor,
      this.fillColor,
      this.hintColor,
      this.prefixIcon,
      this.suffixIcon,
      this.onChange,
      this.textDirection,
      this.fontFamily,
      this.autoValidateMode,
      this.onSubmit,
      this.action,
      this.enableBorderColor,
      this.disabledBorderColor,
      this.focusBorderColor,
      this.enableTitle = true,
      required this.validate});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(vertical: AppMargin.mH4),
      padding: EdgeInsets.zero,
      child: Visibility(
        visible: fieldTypes == FieldTypes.clickable,
        replacement: buildFormFiled(context),
        child: buildClickableView(context),
      ),
    );
  }

  Widget buildClickableView(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AbsorbPointer(
        absorbing: true,
        child: buildFormFiled(context),
      ),
    );
  }

  Widget buildFormFiled(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          controller: controller,
          keyboardType: type,
          textInputAction: action ?? TextInputAction.next,
          textAlign: TextAlign.center,
          enableSuggestions: false,
          autocorrect: false,
          autofocus: autoFocus,
          focusNode: focusNode,
          textDirection: textDirection,
          autovalidateMode:
              autoValidateMode ?? AutovalidateMode.onUserInteraction,
          inputFormatters: inputFormatters ??
              [
                if (maxLength != null)
                  LengthLimitingTextInputFormatter(maxLength),
              ],
          enabled: fieldTypes != FieldTypes.disable,
          autofillHints: getAutoFillHints(type ?? TextInputType.text),
          maxLines: fieldTypes == FieldTypes.chat
              ? null
              : fieldTypes == FieldTypes.rich
                  ? max
                  : 1,
          obscureText: fieldTypes == FieldTypes.password,
          readOnly: fieldTypes == FieldTypes.readonly,
          onEditingComplete: onSubmit,
          onChanged: onChange,
          validator: (value) => validate(value),
          style: TextStyleManager.blackS14RegularStyle,
          onTap: onTap,
          decoration: InputDecoration(
            errorStyle: TextStyle(color: ColorManager.red),
            hintText: hint,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.red),
              borderRadius: radius ?? BorderRadius.circular(22.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: focusBorderColor ?? ColorManager.transparent),
              borderRadius: radius ?? BorderRadius.circular(22.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: enableBorderColor ?? ColorManager.transparent),
              borderRadius: radius ?? BorderRadius.circular(22.r),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: disabledBorderColor ?? ColorManager.transparent),
              borderRadius: radius ?? BorderRadius.circular(22.r),
            ),
            hintStyle: TextStyleManager.blackS14RegularStyle,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: fillColor ?? ColorManager.backgroundTextField,
            filled: true,
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(horizontal: AppPadding.pW5),
            prefix: prefixWidget,
            suffix: suffixWidget,
          ),
        ),
      ],
    );
  }

  List<String> getAutoFillHints(TextInputType inputType) {
    if (inputType == TextInputType.emailAddress) {
      return [AutofillHints.email];
    } else if (inputType == TextInputType.datetime) {
      return [AutofillHints.birthday];
    } else if (inputType == TextInputType.phone) {
      return [AutofillHints.telephoneNumber];
    } else if (inputType == TextInputType.url) {
      return [AutofillHints.url];
    }
    return [AutofillHints.name, AutofillHints.username];
  }
}

enum FieldTypes { normal, clickable, readonly, chat, password, rich, disable }
