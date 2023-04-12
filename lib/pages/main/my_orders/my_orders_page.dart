import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';

class MyOrdersPage extends StatefulWidget  {
   MyOrdersPage({Key? key}) : super(key: key);

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> with TickerProviderStateMixin {
   late TabController tabController;

  int currentIndex = 0;

  int current =0;

   @override
   void initState() {

     tabController = TabController(length: 2, vsync: this);
     tabController.addListener(() {});
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Мои заказы',
          style: ThemeTextStyles.myorders,
        ),
        bottom: TabBar(
          labelColor: Colors.black,
          padding: EdgeInsets.all(4),
          controller: tabController,
          indicator: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(
              Radius.circular(62),
            ),
          ),
          tabs: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(62),
              ),
              child: Tab(
                  child: SizedBox(
                      width: 120,
                      child: Center(child: Text("Предстоящие")))),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(62),
              ),
              child: Tab(
                  child: SizedBox(
                      width: 120, child: Center(child: Text("История")))),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, right: 16 ),
                child: Container( decoration: BoxDecoration( color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8),),
                ),
                  width: 343,
                  height: 70,
                  child: Row(
                    children: [

                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ SizedBox(height: 8),
                          Text(
                            "5555",
                            style: TextStyle(
                                color: Color(0xff303030),
                                fontWeight: FontWeight.w900,
                                fontSize: 13),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "6666",
                            style: TextStyle(
                                color: Color(0xff969696),
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "77777",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 2,
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, right: 16 ),
                child: Container( decoration: BoxDecoration( color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8),),
                ),
                  width: 343,
                  height: 70,
                  child: Row(
                    children: [

                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ SizedBox(height: 8),
                          Text(
                            "88888",
                            style: TextStyle(
                                color: Color(0xff303030),
                                fontWeight: FontWeight.w900,
                                fontSize: 13),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "99999",
                            style: TextStyle(
                                color: Color(0xff969696),
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "1111",
                            style: TextStyle(

                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 2
          ),
        ],
      ),

    );
  }
}
