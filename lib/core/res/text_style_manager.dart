import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'style_manager.dart';

abstract class TextStyleManager {
  static final TextStyle snackBarStyle = mediumFont(
    color: ColorManager.white,
    fontSized: FontSize.s12,
  );

  // Bold
  static final TextStyle primaryS12BoldStyle = boldFont(
    color: ColorManager.primary,
    fontSized: FontSize.s12,
  );
  static final TextStyle whiteS25BoldStyle = boldFont(
    color: ColorManager.white,
    fontSized: FontSize.s25,
  );

  // Semi Bold
  static final TextStyle primaryS29SemiBoldStyle = semiBoldFont(
    color: ColorManager.primary,
    fontSized: FontSize.s29,
  );
  static final TextStyle primaryS16SemiBoldStyle = semiBoldFont(
    color: ColorManager.primary,
    fontSized: FontSize.s16,
  );
  static final TextStyle primaryS14SemiBoldStyle = semiBoldFont(
    color: ColorManager.primary,
    fontSized: FontSize.s14,
  );
  static final TextStyle blackS12SemiBoldStyle = semiBoldFont(
    color: ColorManager.black,
    fontSized: FontSize.s12,
  );
  static final TextStyle whiteS14SemiBoldStyle = semiBoldFont(
    color: ColorManager.white,
    fontSized: FontSize.s14,
  );
  static final TextStyle greenStatusS16SemiBoldStyle = semiBoldFont(
    color: ColorManager.greenStatus,
    fontSized: FontSize.s16,
  );
  static final TextStyle redS16SemiBoldStyle = semiBoldFont(
    color: ColorManager.red,
    fontSized: FontSize.s16,
  );
  static final TextStyle greyStatusS16SemiBoldStyle = semiBoldFont(
    color: ColorManager.greyStatus,
    fontSized: FontSize.s16,
  );

  // Medium
  static final TextStyle primaryS12MediumStyle = mediumFont(
    color: ColorManager.primary,
    fontSized: FontSize.s12,
  );
  static final TextStyle whiteS25MediumStyle = mediumFont(
    color: ColorManager.white,
    fontSized: FontSize.s25,
  );
  static final TextStyle whiteS16MediumStyle = mediumFont(
    color: ColorManager.white,
    fontSized: FontSize.s16,
  );
  static final TextStyle blackS12mediumStyle = mediumFont(
    color: ColorManager.black,
    fontSized: FontSize.s12,
  );
  static final TextStyle blackS10mediumStyle = mediumFont(
    color: ColorManager.black,
    fontSized: FontSize.s10,
  );
  static final TextStyle greyTextS12mediumStyle = mediumFont(
    color: ColorManager.greyText,
    fontSized: FontSize.s12,
  );
  static final TextStyle greyTextS10mediumStyle = mediumFont(
    color: ColorManager.greyText,
    fontSized: FontSize.s10,
  );

  // Regular
  static final TextStyle blackS14RegularStyle = regularFont(
    color: ColorManager.black,
    fontSized: FontSize.s14,
  );

  static final TextStyle hintsS14RegularStyle = regularFont(
    color: ColorManager.hints,
    fontSized: FontSize.s14,
  );

  static final TextStyle whiteS8RegularStyle = regularFont(
    color: ColorManager.white,
    fontSized: FontSize.s8,
  );
}
