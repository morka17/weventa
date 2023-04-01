import 'package:flutter/material.dart';

Widget rowEitherWrap(
    {required bool condition, required List<Widget> contents}) {
  // if (condition) {
  //   return Row(
  //     children: contents,
  //   );
  // }

  return Wrap(
    children: contents,
  );
}
