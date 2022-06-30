import 'dart:developer';

import 'package:bekhar/models/shopping_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingListView extends StatefulWidget {
  final void Function(int) onItemTapped;
  final List<ShoppingItem> items;

  const ShoppingListView({
    Key? key,
    required this.onItemTapped,
    required this.items,
  }) : super(key: key);

  @override
  State<ShoppingListView> createState() => _ShoppingListViewState();
}

class _ShoppingListViewState extends State<ShoppingListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                widget.items[index].isDone = !widget.items[index].isDone;
                widget.onItemTapped(index);
                setState(() {});
              },
              enableFeedback: false,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              highlightColor: const Color.fromARGB(0, 255, 255, 255),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      value: widget.items[index].isDone,
                      onChanged: (val) {
                        widget.items[index].isDone = val ?? false;
                        widget.onItemTapped(index);
                        setState(() {});
                      },
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      side: BorderSide(
                        color:
                            Get.theme.colorScheme.onBackground.withAlpha(100),
                        width: 1,
                      ),
                      overlayColor: MaterialStateProperty.all(
                        Get.theme.colorScheme.onBackground.withAlpha(10),
                      ),
                      fillColor: MaterialStateProperty.all(
                        Get.theme.colorScheme.secondary.withAlpha(100),
                      ),
                      checkColor: Get.theme.colorScheme.secondary,
                    ),
                  ),
                  Text(
                    widget.items[index].name,
                    style: widget.items[index].isDone
                        ? TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Get.theme.colorScheme.onBackground
                                .withAlpha(100),
                          )
                        : null,
                  ),
                ],
              ),
            ),
            index != widget.items.length - 1
                ? const Divider(
                    indent: 10,
                    endIndent: 10,
                  )
                : const SizedBox(),
          ],
        );
      },
    );
  }
}
