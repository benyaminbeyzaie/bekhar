import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BekharAppBar extends AppBar {
  final String titleText;
  final bool withBackButton;
  final BuildContext context;

  BekharAppBar({
    Key? key,
    required this.context,
    required this.titleText,
    this.withBackButton = false,
  }) : super(
          key: key,
          toolbarHeight: 60,
          backgroundColor: Get.theme.backgroundColor,
          elevation: 0,
          title: Text(
            titleText,
          ),
          titleTextStyle: TextStyle(
            color: Get.theme.colorScheme.onBackground,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          automaticallyImplyLeading: false,
          leading: withBackButton
              ? IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.angleLeft,
                  ),
                  onPressed: () => Navigator.pop(context),
                )
              : null,
          centerTitle: true,
          iconTheme: IconThemeData(color: Get.theme.colorScheme.onPrimary),
        );
}
