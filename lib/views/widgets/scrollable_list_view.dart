import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScrollableListView extends StatelessWidget {
  final List<Map<String, String>> items = List.generate(
    20,
    (index) => {
      "title": "Item ${index + 1}",
      "subtitle": "Description of item ${index + 1}",
    },
  );

  ScrollableListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
          title: Text(
            items[index]["title"] ?? "",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          subtitle: Text(
            items[index]["subtitle"] ?? "",
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        );
      },
    );
  }
}
