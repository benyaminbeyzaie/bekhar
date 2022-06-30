import 'package:badges/badges.dart';
import 'package:bekhar/models/shopping_item.dart';
import 'package:bekhar/widgets/bekhar_app_bar.dart';
import 'package:bekhar/widgets/buttons/bekhar_elevated_button.dart';
import 'package:bekhar/widgets/buttons/bekhar_icon_button.dart';
import 'package:bekhar/widgets/shopping_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class DesignSystemPage extends StatefulWidget {
  const DesignSystemPage({Key? key}) : super(key: key);

  @override
  State<DesignSystemPage> createState() => _DesignSystemPageState();
}

class _DesignSystemPageState extends State<DesignSystemPage> {
  int _selectedIndex = 0;
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
            Expanded(
              child: ShoppingListView(
                onItemTapped: (val) {},
                items: [
                  ShoppingItem(name: 'name', isDone: false),
                  ShoppingItem(name: 'name', isDone: false),
                  ShoppingItem(name: 'name', isDone: false)
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Get.theme.backgroundColor,
        selectedItemColor: Get.theme.colorScheme.onBackground,
        unselectedItemColor:
            Get.theme.colorScheme.onBackground.withOpacity(0.3),
        elevation: 0,
        iconSize: 20,
        items: [
          BottomNavigationBarItem(
            icon: Badge(
              badgeContent: Text(
                '24',
                style: TextStyle(
                  color: Get.theme.colorScheme.onPrimary,
                  fontSize: 10,
                ),
              ),
              borderSide: BorderSide(
                width: 2.5,
                color: Get.theme.backgroundColor,
              ),
              elevation: 0,
              shape: BadgeShape.circle,
              borderRadius: BorderRadius.circular(10),
              badgeColor: _selectedIndex == 0
                  ? Get.theme.colorScheme.secondary
                  : Get.theme.colorScheme.secondary,
              child: const Icon(FontAwesomeIcons.house),
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() {
          _selectedIndex = index;
        }),
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
