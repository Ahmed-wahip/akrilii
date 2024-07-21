import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/theme/theme_icon.dart';
import 'package:akrilii/widget/user_person_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateUserImage extends StatelessWidget {
  final VoidCallback onPressed;
  final String imageSrc;
  const UpdateUserImage({
    super.key,
    required this.onPressed,
    required this.imageSrc,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150.w,
          height: 150.w,
        ),
        Positioned(
          top: 0,
          left: 0,
          child: UserPersonImage(
            imageSrc: imageSrc,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: ThemeIcon(onPressed: onPressed, svgIcon: iconApp.cameraIcon),
        ),
      ],
    );
  }
}
