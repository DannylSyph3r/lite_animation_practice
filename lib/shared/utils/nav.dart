import 'package:flutter/material.dart';

void goBack(BuildContext context) {
  // killKeyboard(context);
  Navigator.of(context).pop();
}

void goTo({
  required BuildContext context,
  required Widget view,
}) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => view,
  ));
}

void goToAndReset({
  required BuildContext context,
  required Widget view,
}) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => view,
      ),
      (route) => false);
}

void goToAndReplace({
  required BuildContext context,
  required Widget view,
}) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => view,
  ));
}
