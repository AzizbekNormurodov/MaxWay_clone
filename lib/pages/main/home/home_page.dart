import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_colors.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';
import 'package:maxway_clone/pages/main/home/information_page.dart';
import 'package:maxway_clone/pages/main/home/widget/listview_builder_widget.dart';
import 'package:maxway_clone/routes/app_routes.dart';

import 'widget/listview_seperated_widget.dart';
import 'widget/sliver_padding_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        elevation: 1,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 60,
              child: ListViewBuilderWidget(),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(left: 12, top: 12),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Рекомендуем",
                style: ThemeTextStyles.text2,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: 88,
              height: 112,
              child: ListviewSeperatedWidget(),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Бургеры",
                style: ThemeTextStyles.text2,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                mainAxisExtent: 222,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return InkWell( onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return InformationPage();
                    }));
                  },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      child: Material(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              width: 170,
                              height: 124,
                              "assets/home/maksburger.png",
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 8),
                            const Padding(
                              padding: EdgeInsets.only(left: 8, right: 8, bottom: 14,),
                              child: Text(
                                "Макс Бургер",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              width: 154,
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: ThemeColors.light_grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: Center(child: Text("25 000 сум", style: TextStyle(color: Colors.black, fontSize: 15),)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                childCount: 4,
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Сендвич",
                style: ThemeTextStyles.text2,
              ),
            ),
          ),
          SliverPaddingWidget(),
        ],
      ),
    );
  }
}
