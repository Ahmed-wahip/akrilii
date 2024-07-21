import 'package:akrilii/bloc/dropdown_battom/dropdownbutton_bloc.dart';
import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:akrilii/data/type_of_services.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/functions/dropdown_serves_button.dart';
import 'package:akrilii/theme/theme_button.dart';
import 'package:akrilii/theme/theme_dropdown_button.dart';
import 'package:akrilii/theme/theme_icon.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:akrilii/widget/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddServerScreen extends StatelessWidget {
  const AddServerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DropdownbuttonBloc(),
      child: Scaffold(
        backgroundColor: ColorApp.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ThemeIcon(
                        onPressed: () => Navigator.pop(context),
                        svgIcon: iconApp.arrowRight.tr(context),
                      ),
                      const Spacer(),
                      const ThemeText(
                        text: "titel_add_ads",
                        textType: TextType.titel,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Container(
                  width: SizeApp.screenWidth! * 1.w,
                  height: SizeApp.screenWidth! * 0.70.w,
                  margin: EdgeInsets.all(22.w),
                  decoration: BoxDecoration(
                    color: ColorApp.primaryColor,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      iconApp.cameraIcon,
                      color: ColorApp.iconColor,
                      width: 70.w,
                    ),
                  ),
                ),
                const InputText(
                  hintMsg: "titel_serves",
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 20.w),
                const InputText(
                  hintMsg: "description_serves",
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  maxLines: null,
                ),
                SizedBox(height: 20.w),
                const InputText(
                  hintMsg: "price_serves",
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  maxLines: null,
                ),
                SizedBox(height: 20.w),

                //
                BlocBuilder<DropdownbuttonBloc, DropdownbuttonState>(
                  builder: (context, state) {
                    return ThemeDropdownButton(
                      hintText: dropdownbuttonBloc.valueChanded.tr(context),
                      items: typeOfServices.typeOfServices.map(
                        (value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value.tr(context)),
                          );
                        },
                      ).toList(),
                      onChanged: (nowValue) => dropbownServesButton(
                        context,
                        nowValue!,
                      ),
                    );
                  },
                ),
                SizedBox(height: 20.w),
                ThemeButton(
                  onPressed: () {},
                  svgIcon: iconApp.tagIcon,
                  text: "add_ads_button",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
