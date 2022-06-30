import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BekharButtonWrapper extends StatelessWidget {
  final Widget child;
  const BekharButtonWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Get.theme.primaryColor.withAlpha(80),
            blurRadius: 15,
            offset: const Offset(0, 0),
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: child,
    );
  }
}
