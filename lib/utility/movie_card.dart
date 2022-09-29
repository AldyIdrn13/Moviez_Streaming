import 'package:flutter/material.dart';
import 'package:moviez_streaming/model/movie.dart';
import 'package:moviez_streaming/styles/color.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Row(
            children: [
              ///Banner
              ClipRRect(
                borderRadius: BorderRadius.circular(21),
                child: Image.asset(
                  movie.movieBanner, 
                  width: 100,
                ),
              ),

              SizedBox(width: 20),

              ///Detail
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///Title
                  Text(
                    movie.movieTitle,
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: darkblue,
                    ),
                  ),

                  SizedBox(height: 4),

                  ///Genre
                  Text(
                    movie.movieGenre,
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: darkwhite,
                    ),
                  ),

                  SizedBox(height: 20),

                  ///Rate
                  Image.asset(
                    movie.movieRate,
                    height: 18,
                  ),
                ],
              ),
            ],
          ),
        ),
        ],
    );
  }
}