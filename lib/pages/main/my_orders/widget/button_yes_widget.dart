import 'package:flutter/material.dart';
import 'package:maxway_clone/pages/main/my_orders/widget/bottom_sheet_yes.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class ButtonYesWidget extends StatefulWidget {
  const ButtonYesWidget({Key? key}) : super(key: key);

  @override
  State<ButtonYesWidget> createState() => _ButtonYesWidgetState();
}

class _ButtonYesWidgetState extends State<ButtonYesWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(8)),
        minimumSize: Size(120, 42),
        textStyle: Theme.of(context)
            .textTheme
            .labelLarge,
      ),
      child: const Text('Да 👍'),
      onPressed: () {
        Navigator.of(context).pop();
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return BottomSheetYesCommit();
            });
      },

    );
  }
}
