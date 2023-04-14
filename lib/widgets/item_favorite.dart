import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:youmovie/models/favorite_model.dart';
import 'package:youmovie/screens/detail_movie_screen.dart';

import '../models/popular_model.dart';

class ItemFavorite extends StatelessWidget {
  const ItemFavorite({super.key, required this.favoriteModel});

  final FavoriteModel favoriteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DetailMovieScreen(id: favoriteModel.id!),
            transition: Transition.zoom,
            duration: const Duration(milliseconds: 500));
      },
      child: Image.network(
          'https://image.tmdb.org/t/p/w500${favoriteModel.posterPath}',
          fit: BoxFit.fill, loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
            child: SizedBox(
          width: 200.0,
          height: double.infinity,
          child: Shimmer.fromColors(
              baseColor: Colors.grey.withOpacity(0.25),
              highlightColor: Colors.white.withOpacity(0.6),
              child: Container(
                width: 200.0,
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.withOpacity(0.9)),
              )),
        ));
      }),
    );
  }
}
//'https://image.tmdb.org/t/p/w500/${popularModel.posterPath}')