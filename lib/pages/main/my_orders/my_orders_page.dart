import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';

import 'widget/button_no_widget.dart';
import 'widget/button_yes_widget.dart';
import 'widget/current_orders_widget.dart';
import 'widget/order_history_widget.dart';

class MyOrdersPage extends StatefulWidget {
  MyOrdersPage({Key? key}) : super(key: key);

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;

  int current = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: const Text(
            'Мои заказы',
            style: ThemeTextStyles.myorders,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.only(left: 13, right: 19, top: 20),
            child: Container(
              width: 343,
              height: 32,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xffEFEFF4),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: Theme.of(context).colorScheme.copyWith(
                        surfaceVariant: Colors.transparent,
                      ),
                ),
                child: TabBar(
                  labelColor: Colors.black,
                  padding: EdgeInsets.all(2),
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  tabs: const [
                    Tab(
                      child: Text("История заказов"),
                    ),
                    Tab(
                      child: Text("Текущие заказы"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(
              itemBuilder: (context, index) {
                return OrderHistoryWidget();
              },
              itemCount: 1),
          ListView.builder(
              itemBuilder: (context, index) {
                return CurrentOrdersWidget();
              },
              itemCount: 1),
        ],
      ),
    );
  }
}
