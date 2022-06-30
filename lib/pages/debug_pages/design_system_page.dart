import 'package:bekhar/widgets/bekhar_app_bar.dart';
import 'package:bekhar/widgets/buttons/bekhar_elevated_button.dart';
import 'package:bekhar/widgets/buttons/bekhar_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesignSystemPage extends StatelessWidget {
  const DesignSystemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BekharAppBar(
        context: context,
        titleText: "Design System",
        withBackButton: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DesignSystemItem(
              title: "Normal Button",
              child: BekharElevatedButton(
                onPressed: () {},
                child: const Text("Add Item"),
              ),
            ),
            DesignSystemItem(
              title: "Icon Button",
              child: BekharIconButton(
                onPressed: () {},
                iconData: FontAwesomeIcons.plus,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DesignSystemItem extends StatelessWidget {
  final String title;
  final Widget child;
  const DesignSystemItem({
    required this.title,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }
}
