import 'package:flutter/material.dart';
import 'package:moj_mali_rjecnik/views/widgets/custom_bottom_sheet.dart';

// class AddButton extends StatelessWidget {
//   const AddButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       onPressed: () => _showModalBottomSheet(context),
//       tooltip: 'Increment',
//       child: const Icon(Icons.add),
//     );
//   }
//
//   void _showModalBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
//       ),
//       builder: (_) => const CustomBottomSheet(),
//     );
//   }
// }

class AddButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AddButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
