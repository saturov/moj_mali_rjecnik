import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      child: Center(
        child: Text("Here's your bottom sheet"),
      ),
    );
  }
}

void showCustomBottomSheet({
  required BuildContext context,
  required Widget child,
}) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
    ),
    builder: (BuildContext context) => child,
  );
}
