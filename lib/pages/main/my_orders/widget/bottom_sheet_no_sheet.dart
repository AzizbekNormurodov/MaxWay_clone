import 'package:flutter/material.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class CommentBottomSheet extends StatefulWidget {
  const CommentBottomSheet({Key? key}) : super(key: key);

  @override
  State<CommentBottomSheet> createState() => _CommentBottomSheetState();
}

class _CommentBottomSheetState extends State<CommentBottomSheet> {
  bool isChecked = false, isChecked1 = false, isChecked2 = false, isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 438,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12, top: 24),
            child: Text(
              "Выберите причину: 👎",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = (value ?? false);
              });
            },
            title: const Text(
              "🥶 Остывшая еда",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: isChecked1,
            onChanged: (bool? value) {
              setState(() {
                isChecked1 = (value ?? false);
              });
            },
            title: const Text(
              "🐌️ Долгая доставка ",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: isChecked2,
            onChanged: (bool? value) {
              setState(() {isChecked2 = (value ?? false);});
            },
            title: const Text(
              "🙁 Проблемы с курьером ",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: isChecked3,
            onChanged: (bool? value) {
              setState(() {
                isChecked3 = (value ?? false);
              });
            },
            title: const Text(
              "🙁 Проблемы с оператором",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                hintText: 'Добавить комментарии...',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.history);
              },
              child: Text("Подтвердить"),
            ),
          )
        ],
      ),
    );
  }
}
