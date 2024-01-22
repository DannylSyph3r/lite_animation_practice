//! THIS FILE CONTAINS HOPEFULLY, ALL EXTENSIONS USED IN THE APP.
import "dart:developer" as dev_tools show log;
// import "dart:io";
import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";
import "package:intl/intl.dart";
import "package:recreate_czar/theme/color_palette.dart";

// import 'package:url_launcher/url_launcher.dart' show launchUrl;

//! LOG EXTENSION - THIS HELPS TO CALL A .log() ON ANY OBJECT
extension Log on Object {
  void log() => dev_tools.log(toString());
}

//! HELPS TO CALL A .dismissKeyboard ON A WIDGET
extension DismissKeyboard on Widget {
  void dismissKeyboard() => FocusManager.instance.primaryFocus?.unfocus();
}

// const ext = 0;
// final formatCurrency =
//     NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');

// //Formats the amount and returns a formatted amount
// String formatPrice(String amount) {
//   return formatCurrency.format(num.parse(amount)).toString();
// }

extension StringCasingExtension on String {
  String? camelCase() => toBeginningOfSentenceCase(this);
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
  String? trimToken() => contains(":") ? split(":")[1].trim() : this;
  String? trimSpaces() => replaceAll(" ", "");
  String removeSpacesAndLower() => replaceAll(' ', '').toLowerCase();
}

// Icon widget extension

extension CustomIcon on IconData {
  Icon iconizer({double? size, Color? color}) {
    return Icon(this, size: size, color: color);
  }
}

// TextStyling Widget extensions 

extension StyledTextExtension on String {
  Text txt({
    double? size,
    Color? color,
    Color? decorationColor,
    FontWeight? fontWeight,
    String? fontFamily,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
    F? fontW,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontSize: size ?? 14.sp,
        color: color ?? Palette.blackColor,
        fontWeight: switch (fontW) {
          F.w3 => FontWeight.w300,
          F.w5 => FontWeight.w500,
          F.w6 => FontWeight.w600,
          F.w7 => FontWeight.w700,
          F.w8 => FontWeight.w800,
          _ => fontWeight,
        },
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
        decorationColor: decorationColor
      ),
    );
  }
}

extension StyledTextExtension14 on String {
  Text txt14({
    double? size,
    Color? color,
    Color? decorationColor,
    FontWeight? fontWeight,
    String? fontFamily,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
    F? fontW,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontSize: 14.sp,
        color: color ?? Palette.blackColor,
        fontWeight: switch (fontW) {
          F.w3 => FontWeight.w300,
          F.w5 => FontWeight.w500,
          F.w6 => FontWeight.w600,
          F.w7 => FontWeight.w700,
          F.w8 => FontWeight.w800,
          _ => fontWeight,
        },
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
        decorationColor: decorationColor
      ),
    );
  }
}

extension StyledTextExtension12 on String {
  Text txt12({
    double? size,
    Color? color,
    Color? decorationColor,
    FontWeight? fontWeight,
    String? fontFamily,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
    F? fontW,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontSize: 12.sp,
        color: color ?? Palette.blackColor,
        fontWeight: switch (fontW) {
          F.w3 => FontWeight.w300,
          F.w5 => FontWeight.w500,
          F.w6 => FontWeight.w600,
          F.w7 => FontWeight.w700,
          F.w8 => FontWeight.w800,
          _ => fontWeight,
        },
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
        decorationColor: decorationColor
      ),
    );
  }
}

extension StyledTextExtension16 on String {
  Text txt16({
    double? size,
    Color? color,
    Color? decorationColor,
    FontWeight? fontWeight,
    String? fontFamily,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
    F? fontW,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontSize: 16.sp,
        color: color ?? Palette.blackColor,
        fontWeight: switch (fontW) {
          F.w3 => FontWeight.w300,
          F.w5 => FontWeight.w500,
          F.w6 => FontWeight.w600,
          F.w7 => FontWeight.w700,
          F.w8 => FontWeight.w800,
          _ => fontWeight,
        },
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
        decorationColor: decorationColor
      ),
    );
  }
}

extension StyledTextExtension18 on String {
  Text txt18({
    double? size,
    Color? color,
    Color? decorationColor,
    FontWeight? fontWeight,
    String? fontFamily,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
    F? fontW,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontSize: 18.sp,
        color: color ?? Palette.blackColor,
        fontWeight: switch (fontW) {
          F.w3 => FontWeight.w300,
          F.w5 => FontWeight.w500,
          F.w6 => FontWeight.w600,
          F.w7 => FontWeight.w700,
          F.w8 => FontWeight.w800,
          _ => fontWeight,
        },
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
        decorationColor: decorationColor
      ),
    );
  }
}

extension StyledTextExtension24 on String {
  Text txt24({
    double? size,
    Color? color,
    Color? decorationColor,
    FontWeight? fontWeight,
    String? fontFamily,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
    F? fontW,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontSize: 24.sp,
        color: color ?? Palette.blackColor,
        fontWeight: switch (fontW) {
          F.w3 => FontWeight.w300,
          F.w5 => FontWeight.w500,
          F.w6 => FontWeight.w600,
          F.w7 => FontWeight.w700,
          F.w8 => FontWeight.w800,
          _ => fontWeight,
        },
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
        decorationColor: decorationColor
      ),
    );
  }
}

extension StyledTextExtension30 on String {
  Text txt30({
    double? size,
    Color? color,
    Color? decorationColor,
    FontWeight? fontWeight,
    String? fontFamily,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
    F? fontW,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontSize: 30.sp,
        color: color ?? Palette.blackColor,
        fontWeight: switch (fontW) {
          F.w3 => FontWeight.w300,
          F.w5 => FontWeight.w500,
          F.w6 => FontWeight.w600,
          F.w7 => FontWeight.w700,
          F.w8 => FontWeight.w800,
          _ => fontWeight,
        },
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
        decorationColor: decorationColor
      ),
    );
  }
}

extension StyledTextExtension20 on String {
  Text txt20({
    double? size,
    Color? color,
    Color? decorationColor,
    FontWeight? fontWeight,
    String? fontFamily,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    TextDecoration? decoration,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
    F? fontW,
  }) {
    return Text(
      this,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontSize: 20.sp,
        color: color ?? Palette.blackColor,
        fontWeight: switch (fontW) {
          F.w3 => FontWeight.w300,
          F.w5 => FontWeight.w500,
          F.w6 => FontWeight.w600,
          F.w7 => FontWeight.w700,
          F.w8 => FontWeight.w800,
          _ => fontWeight,
        },
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        decoration: decoration,
        decorationColor: decorationColor
      ),
    );
  }
}

// Image Path extension

extension ImagePath on String {
  String get png => 'lib/assets/images/$this.png';
  String get jpg => 'lib/assets/images/$this.jpg';
  String get gif => 'lib/assets/images/$this.gif';
}

// Icon Path extension

extension IconPath on String {
  String get iconPng => 'lib/assets/icons/$this.png';
  String get iconSvg => 'lib/assets/icons/$this.svg';
}

extension NumExtensions on int {
  num addPercentage(num v) => this + ((v / 100) * this);
  num getPercentage(num v) => ((v / 100) * this);
}

extension NumExtensionss on num {
  num addPercentage(num v) => this + ((v / 100) * this);
  num getPercentage(num v) => ((v / 100) * this);
}

// void openUrl({String? url}) {
//   launchUrl(Uri.parse("http://$url"));
// }

// void openMailApp({String? receiver, String? title, String? body}) {
//   launchUrl(Uri.parse("mailto:$receiver?subject=$title&body=$body"));
// }


// SizedBox extension to shorten keywording for sizedBoxes

extension WidgetExtensionss on num {
  Widget get sbH => SizedBox(
        height: h,
      );

  Widget get sbW => SizedBox(
        width: w,
      );

  EdgeInsetsGeometry get padV => EdgeInsets.symmetric(vertical: h);

  EdgeInsetsGeometry get padH => EdgeInsets.symmetric(horizontal: w);
}

// Padding extensions

extension WidgetExtensions on double {
  Widget get sbH => SizedBox(
        height: h,
      );

  Widget get sbW => SizedBox(
        width: w,
      );

  EdgeInsetsGeometry get padA => EdgeInsets.all(this);

  EdgeInsetsGeometry get padV => EdgeInsets.symmetric(vertical: h);

  EdgeInsetsGeometry get padH => EdgeInsets.symmetric(horizontal: w);
}

// Image.asset extension

extension ImageExtension on String {
  Image myImage({
    Color? color,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(
      this,
      height: height,
      fit: fit,
      color: color,
    );
  }
}

// SVG Image asset extension

extension SvgImageExtension on String {
  SvgPicture mySvgImage({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    Widget Function(BuildContext)? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    SvgTheme? theme,
    ColorFilter? colorFilter,
  }) {
    return SvgPicture.asset(
      this,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      theme: theme,
      colorFilter: colorFilter,
    );
  }
}

// Duration Extension call {number}.{durationType}

extension DurationExtension on int {
  Duration get milliseconds => Duration(milliseconds: this);
  Duration get seconds => Duration(seconds: this);
  Duration get minutes => Duration(minutes: this);
  Duration get hours => Duration(hours: this);
  Duration get days => Duration(days: this);
}

// Inkwell Tap Extension call .inkTap on a widget you want to add a tap effect

extension InkWellExtension on Widget {
  InkWell inkTap({
    required GestureTapCallback? onTap,
    GestureTapCallback? onDoubleTap,
    GestureLongPressCallback? onLongPress,
    BorderRadius? borderRadius,
    Color? splashColor = Colors.transparent,
    Color? highlightColor = Colors.transparent,
  }) {
    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      borderRadius: borderRadius ?? BorderRadius.circular(12.r),
      splashColor: splashColor,
      highlightColor: highlightColor,
      child: this,
    );
  }
}

// Gesture Tap Extension call .gestureTap on a widget you want to add a tap effect

extension GestureTap on Widget {
  GestureDetector gestureTap({
    VoidCallback? onTap,
    VoidCallback? onDoubleTap,
    VoidCallback? onLongPress,
  }) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: this,
    );
  }
}

// Alignment Extensions call .align{position} on any widget

extension AlignExtension on Widget {
  Align align(Alignment alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  Align alignCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }

  Align alignCenterLeft() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  Align alignCenterRight() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }

  Align alignTopCenter() {
    return Align(
      alignment: Alignment.topCenter,
      child: this,
    );
  }

  Align alignBottomCenter() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }

  Align alignBottomLeft() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: this,
    );
  }

  Align alignBottomRight() {
    return Align(
      alignment: Alignment.bottomRight,
      child: this,
    );
  }

  Align alignTopRight() {
    return Align(
      alignment: Alignment.topRight,
      child: this,
    );
  }

  Align alignTopLeft() {
    return Align(
      alignment: Alignment.topLeft,
      child: this,
    );
  }

  // Add more alignment methods as needed
  // Example: alignTopCenter, alignBottomRight, etc.
}

// Widget animation extensions

extension WidgetAnimation on Widget {
  Animate fadeInFromTop({
    Duration? delay,
    Duration? animatiomDuration,
    Offset? offset,
  }) =>
      animate(delay: delay ?? 500.ms)
          .move(
            duration: animatiomDuration ?? 500.ms,
            begin: offset ?? const Offset(0, -1),
          )
          .fade(duration: animatiomDuration ?? 500.ms);

  Animate fadeInFromBottom({
    Duration? delay,
    Duration? animatiomDuration,
    Offset? offset,
  }) =>
      animate(delay: delay ?? 500.ms)
          .move(
            duration: animatiomDuration ?? 500.ms,
            begin: offset ?? const Offset(0, 10),
          )
          .fade(duration: animatiomDuration ?? 500.ms);

  Animate fadeIn({
    Duration? delay,
    Duration? animatiomDuration,
    Curve? curve,
  }) =>
      animate(delay: delay ?? 500.ms).fade(
        duration: animatiomDuration ?? 500.ms,
        curve: curve ?? Curves.decelerate,
      );
}

// enum for fontweight
enum F {
  w3,
  w5,
  w6,
  w7,
  w8,
}

// Extension for creating a ValueNotifier from a value directly.

extension ValueNotifierExtension<T> on T {
  ValueNotifier<T> get notifier {
    return ValueNotifier<T>(this);
  }
}

// extension for listening to ValueNotifier instances.

extension ValueNotifierBuilderExtension<T> on ValueNotifier<T> {
  Widget sync({
    required Widget Function(BuildContext context, T value, Widget? child)
        builder,
  }) {
    return ValueListenableBuilder<T>(
      valueListenable: this,
      builder: builder,
    );
  }
}

// extension for listening to multiple listenables or value notifiers

extension ListenableBuilderExtension on List<Listenable> {
  Widget syncPro({
    required Widget Function(BuildContext context, Widget? child) builder,
  }) {
    return ListenableBuilder(
      listenable: Listenable.merge(this),
      builder: builder,
    );
  }
}
