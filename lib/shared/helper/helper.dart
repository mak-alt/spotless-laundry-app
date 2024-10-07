/// [removeFocus] is a fun , that is used for remove the focus of the FocusNode

import 'package:flutter/material.dart';

import '../widgets/quick_order_popup.dart';

void removeFocus(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
  return;
}
void showQuickOrderAlert(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return const QuicOrderAlert();
        });
  }