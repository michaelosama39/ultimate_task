import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ultimate_task/core/app_storage/app_storage.dart';
import 'package:ultimate_task/core/customs/custom_shimmer.dart';
import 'package:ultimate_task/core/localization/localization_methods.dart';
import 'package:ultimate_task/core/res/app_strings.dart';
import 'package:ultimate_task/core/res/assets_manager.dart';
import 'package:ultimate_task/core/res/color_manager.dart';
import 'package:ultimate_task/core/res/enums.dart';
import 'package:ultimate_task/core/res/text_style_manager.dart';
import 'package:ultimate_task/core/res/values_manager.dart';
import 'package:ultimate_task/feature/logic/home/presentation/manager/home_cubit.dart';
import '../../../lang/presentation/widgets/show_change_lang_dialog.dart';
import '../../../lang/presentation/manager/lang_cubit/lang_cubit.dart';
import '../../data/models/bilI_item_model.dart';
import '../../data/models/delivery_status_types_model.dart';

part 'home_body.dart';
part 'header_of_home.dart';
part 'home_tab_bar.dart';
part 'home_tab_bar_view.dart';
part 'order_card.dart';
part 'list_of_orders_widget.dart';
part 'tab_bar_item.dart';
part 'list_of_orders_shimmer.dart';
part 'status_text_widget.dart';