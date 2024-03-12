import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../res/color_manager.dart';
import '../res/values_manager.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({
    super.key,
    this.height,
    this.width,
    this.radius = 8,
    this.baseColor,
    this.highlightColor,
    this.containerColor,
  });

  final double? height, width, radius;
  final Color? baseColor, highlightColor, containerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppPadding.pH8),
      child: Shimmer.fromColors(
        baseColor: baseColor ?? Colors.grey.shade300,
        highlightColor: highlightColor ?? Colors.grey.shade100,
        child: Container(
          height: height ?? AppSize.sH20,
          width: width,
          decoration: BoxDecoration(
            color: containerColor ?? ColorManager.shimmerColor,
            borderRadius: BorderRadius.all(Radius.circular(radius!)),
          ),
        ),
      ),
    );
  }
}
