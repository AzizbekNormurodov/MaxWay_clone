import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';

class FilialNavoiyPage extends StatelessWidget {
  const FilialNavoiyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Филиали",
          style: ThemeTextStyles.appTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
        child: Container(
          height: 522,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/png/Mask Group.png",
                width: double.infinity,
                height: 185, fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 12, bottom: 8),
                child: Text("Проспект Навои (Хадра)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,),),
              ),
              ContainerWidget(imag: "assets/png/teleg.png", text: "г. Ташкент, Юнусабадский р-н,\nул. А. Тимура 129Б"),
              ContainerWidget(imag: "assets/png/lokatsiya.png", text: "Megaplanet, Makro"),
              ContainerWidget(imag: "assets/png/phone.png", text: "+99871 207−03−07"),
              ContainerWidget(imag: "assets/png/kalendar.png", text: "с 09-00 до 23-00 "),

            ],
          ),
        ),
      ),
    );
  }
}
class ContainerWidget extends StatelessWidget {
  ContainerWidget({Key? key, required this.imag, required this.text}) : super(key: key);
  String imag;
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 20, bottom: 20, right: 18),
          child: Image.asset(imag, width: 32, height: 32,),
        ),
        Container(  width: 306, height: 72, decoration: BoxDecoration(border: Border(
          bottom: BorderSide(width: 1.5, color: Color(0xffDFDFDF),),
        ),),
          child: Padding(
            padding: const EdgeInsets.only(top: 18, ),
            child: Text(text, style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400), textAlign: TextAlign.left,),
          ),
        ),
      ],
    );
  }
}

