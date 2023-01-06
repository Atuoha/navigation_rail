import 'package:flutter/material.dart';
import '../model/image_item.dart';

class PictureScreen extends StatelessWidget {
  const PictureScreen({Key? key, required this.item}) : super(key: key);
  final ImageItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            item.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(item.imgUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
