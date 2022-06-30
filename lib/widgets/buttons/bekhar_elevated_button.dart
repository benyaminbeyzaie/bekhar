import 'package:bekhar/widgets/buttons/bekhar_button_wrapper.dart';
import 'package:flutter/material.dart';

class BekharElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;
  const BekharElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BekharButtonWrapper(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}
