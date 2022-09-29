import 'package:flutter/material.dart';
import 'package:moviez_streaming/model/movie.dart';
import 'package:moviez_streaming/styles/color.dart';
import 'package:moviez_streaming/utility/movie_card.dart';


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final controller = TextEditingController();
  List<Movie> movies = movieList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children : [ 
    
            ///Background ↓↓↓↓↓
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: white1
                    ),
                  ),
                ),
                Flexible(
                  flex: 7,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          white1,
                          white2,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          
            ///Search Screen ↓↓↓↓↓
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 24),
            
                  ///Search Bar ↓↓↓↓↓
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search, 
                          size:22,
                          color: darkblue,
                        ),
                        border: InputBorder.none,
                        hintText: 'Search here...',
                        hintStyle: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: darkblue,
                        ),
                      ),
                      onChanged: searchMovie,
                    ),
                  ),
                
                  SizedBox(height: 35),
            
                  ///Search Result Header ↓↓↓↓↓
                  Row(
                    children: [
                      Text(
                        'Search Result',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: darkblue,
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        '(${movies.length.toString()})',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: darkblue,
                        ),
                      ),
                    ],
                  ),
            
                  SizedBox(height: 20),
            
                  ///Search Result List ↓↓↓↓↓
                  Expanded(
                    child: ListView.builder(
                          itemCount: movies.length,
                          itemBuilder: (context, index) {
                            final movie = movies[index];

                            return MovieCard(movie: movie);
                          },
                        ),
                  ),
                
                ],
              ),
            ),
          
            ///Suggest Movie Button ↓↓↓↓↓
            Align(
              alignment: Alignment(0.0,0.9),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 220,
                  height: 50,
                  decoration: BoxDecoration(
                    color: darkblue,
                    borderRadius: BorderRadius.circular(37),
                    boxShadow: [
                      BoxShadow(
                        color: darkblue.withOpacity(.5),
                        spreadRadius: -15,
                        blurRadius: 12,
                        offset: Offset(0,20),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Suggest Movie',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ///↑↑↑↑↑
            ///Note: Untuk sementara saya gunakan sebagai button untuk kembali ke HomePage
            ///Note: I temporarily use it as a button to return to the HomePage
          
          ],
        ),
      ),
    );
  }

  ///Method untuk memunculkan search result disaat user melakukan input pada text field.
  ///Method for displaying search results when the user inputs the text field.
  ///↓↓↓↓↓
  void searchMovie(String query) {
    final suggestions = movieList.where((movie) {
      final movieTitle = movie.movieTitle.toLowerCase();
      final input = query.toLowerCase();

      return movieTitle.contains(input);
    }).toList();

    setState(() => movies = suggestions);
  }

}