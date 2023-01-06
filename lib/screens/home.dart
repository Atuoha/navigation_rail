import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../data/image_item.dart';
import 'details.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: MasonryGridView.builder(
        itemCount: imageItems.length,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) => OpenContainer(
          transitionDuration: const Duration(seconds: 3),
          transitionType: ContainerTransitionType.fadeThrough,
          closedBuilder: (BuildContext context, void Function() action) =>
              Column(
            children: [
              Image.network(
                imageItems[index].imgUrl,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 5),
              Text(
                imageItems[index].title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          openBuilder: (
            BuildContext context,
            void Function({Object? returnValue}) action,
          ) =>
              PictureScreen(
            item: imageItems[index],
          ),
        ),
      ),
    );
  }
}
