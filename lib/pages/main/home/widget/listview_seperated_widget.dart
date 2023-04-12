import 'package:flutter/material.dart';
import 'package:maxway_clone/pages/main/home/banner_page.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class ListviewSeperatedWidget extends StatelessWidget {
  ListviewSeperatedWidget({Key? key}) : super(key: key);
  List<String> list_image = ["burger", "burger2", "burger3", "burger"];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoutes.banner,
              arguments: list_image[index],
            );
          },
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            child: Hero(
              tag: list_image[index],
              child: Image.asset(
                "assets/home/${list_image[index]}.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 8),
      itemCount: list_image.length,
    );
  }
}
