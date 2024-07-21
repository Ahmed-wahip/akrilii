import 'package:akrilii/core/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputOtp extends StatelessWidget {
  const InputOtp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      width: 64.w,
      decoration: BoxDecoration(
        color: ColorApp.primaryColor.withOpacity(0.19),
        border: Border.all(width: 1, color: ColorApp.primaryColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context).textTheme.headlineMedium,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
