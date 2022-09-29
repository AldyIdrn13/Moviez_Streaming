class Movie {
  String movieTitle;
  String movieGenre;
  String movieRate;
  String movieBanner;

  Movie({
    required this.movieTitle,
    required this.movieGenre,
    required this.movieRate,
    required this.movieBanner,
  });
}

var movieList = [
  Movie(
    movieTitle: 'Avengers: Endgame',
    movieGenre: 'Heroes',
    movieRate: 'assets/icons/rate5.png',
    movieBanner: 'assets/images/image 1.png',
  ),
  Movie(
    movieTitle: 'Loki',
    movieGenre: 'Heroes',
    movieRate: 'assets/icons/rate5.png',
    movieBanner: 'assets/images/image 2.png',
  ),
  Movie(
    movieTitle: 'The Dark II',
    movieGenre: 'Horror',
    movieRate: 'assets/icons/rate4.png',
    movieBanner: 'assets/images/image 8.png',
  ),
  Movie(
    movieTitle: 'The Dark Knight',
    movieGenre: 'Heroes',
    movieRate: 'assets/icons/rate5.png',
    movieBanner: 'assets/images/image 9.png',
  ),
  Movie(
    movieTitle: 'The Dark Tower',
    movieGenre: 'Action',
    movieRate: 'assets/icons/rate4.png',
    movieBanner: 'assets/images/image 10.png',
  ),
];