import 'package:flutter/material.dart';
import 'package:maxway_clone/routes/app_routes.dart';

import 'bottom_sheet_no_sheet.dart';

class ButtonNoWidget extends StatefulWidget {
  const ButtonNoWidget({Key? key}) : super(key: key);

  @override
  State<ButtonNoWidget> createState() => _ButtonNoWidgetState();
}

class _ButtonNoWidgetState extends State<ButtonNoWidget> {
  bool isChecked = false;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xffEBEDF0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minimumSize: Size(120, 42),
        textStyle: Theme.of(context).textTheme.labelLarge,
      ),
      child: const Text(
        'Нет 👎',
        style: TextStyle(
          color: Color(0xff818C99),
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const CommentBottomSheet();
          },
        );
      },
    );
  }
}
