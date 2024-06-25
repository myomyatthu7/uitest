import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      height: 300,
      child: CachedNetworkImage( 
        imageUrl: 'https://blurha.sh/assets/images/img1.jpg',
      ),
    ));
  }
}
