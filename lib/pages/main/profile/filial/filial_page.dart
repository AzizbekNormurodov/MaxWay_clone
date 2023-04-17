import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class FilialPage extends StatefulWidget {
  const FilialPage({Key? key}) : super(key: key);

  @override
  State<FilialPage> createState() => _FilialPageState();
}

class _FilialPageState extends State<FilialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: Text("Филиали", style: ThemeTextStyles.appTitle,),),
      body: Column(
        children: [
          GestureDetector( onTap: (){
            Navigator.pushNamed(context, AppRoutes.filialnavoiy);
          },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/png/filial1.png", width: double.infinity, height: 299,),
            ),
          ),
          GestureDetector( onTap: (){Navigator.pushNamed(context, AppRoutes.filialnavoiy);},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/png/filial2.png"),
            ),
          ),
        ],
      ),
    );
  }
}
