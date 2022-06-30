import 'package:bekhar/widgets/buttons/bekhar_button_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BekharIconButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData iconData;
  const BekharIconButton({
    Key? key,
    required this.onPressed,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BekharButtonWrapper(
      child: ElevatedButton(
        onPressed: onPressed,
        child: FaIcon(
          iconData,
          size: 20,
        ),
      ),
    );
  }
}
