import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recreate_czar/theme/color_palette.dart';

class AppButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? radius;
  final void Function()? onTap;
  final Color? color;
  final Widget? item;
  final String? text;
  final bool isText;
  final Color? textColor;
  const AppButton({
    Key? key,
    this.height,
    this.width,
    this.fontSize,
    this.radius,
    required this.onTap,
    this.color,
    this.item,
    this.text,
    this.isText = true,
    this.textColor,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 55.h,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radius ?? 20.r),
            ),
          ),
          padding: EdgeInsets.zero,
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: color ?? Palette.speakSphereRed,
        ),
        child: Center(
          child: isText == true
              ? Text(text ?? '',
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      fontSize: fontSize ?? 20.sp,
                      fontWeight: fontWeight ?? FontWeight.w500,
                      color: textColor ?? Palette.whiteColor,
                    ),
                  ))
              : item,
        ),
      ),
    );
  }
}