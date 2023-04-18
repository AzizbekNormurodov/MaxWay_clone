import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:maxway_clone/core/utils/cupertino_date_picker_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Редактировать профиль",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12),
            child: Text(
              "Имя",
              style: ThemeTextStyles.name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              style: ThemeTextStyles.inputname,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
              // controller: cpfcontroller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12),
            child: Text(
              "Фамилия",
              style: ThemeTextStyles.name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              style: ThemeTextStyles.inputname,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
              // controller: cpfcontroller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12),
            child: Text(
              "Номер телефона",
              style: ThemeTextStyles.name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              style: ThemeTextStyles.inputname,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "+99893 564 92 29",
                  fillColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
              // controller: cpfcontroller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12, bottom: 4),
            child: Text(
              "Ваш дата рождения",
              style: ThemeTextStyles.name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              style: ThemeTextStyles.inputname,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "11.09.1991",
                  fillColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
              // controller: cpfcontroller,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     showModalBottomSheet(
            //         context: context,
            //         builder: (_) {
            //           return DateWidget(text: "text", mode: CupertinoDatePickerMode.date);
            //         });
            //   },
            //   child: Text("Sana"),
            // ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 10),
            child: ElevatedButton(onPressed: () {}, child: Text("Подтвердить")),
          ),
        ],
      ),
    );
  }
}
