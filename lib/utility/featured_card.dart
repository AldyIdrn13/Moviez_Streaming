import 'package:flutter/material.dart';
import 'package:moviez_streaming/styles/color.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [

          ///Card 1
          SizedBox(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                ///Banner
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: myPurple.withOpacity(.5),
                        spreadRadius: -15,
                        blurRadius: 12,
                        offset: Offset(0,20),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(21),
                    child: Image.asset(
                      'assets/images/image 3.png', 
                      width: 300,
                    ),
                  ),
                ),

                SizedBox(height: 19),

                ///Detail
                Row(
                  children: [

                    ///Title & Genre
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        ///Title
                        Text(
                          'John Wick 4',
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
                          'Action, Crime',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: darkwhite,
                          ),
                        ),
                      ],
                    ),

                    Spacer(),

                    ///Rate
                    Icon(
                      Icons.star,
                      color: myYellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: myYellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: myYellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: myYellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: myYellow,
                      size: 18,
                    ),
                  ],
                ),

              ],
            ),
          ),

          SizedBox(width: 24),

          ///Card 2
          SizedBox(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                ///Banner
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: myOrange.withOpacity(.5),
                        spreadRadius: -15,
                        blurRadius: 12,
                        offset: Offset(0,20),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(21),
                    child: Image.asset(
                      'assets/images/image 4.png', 
                      width: 300,
                    ),
                  ),
                ),
                              
                SizedBox(height: 19),
                              
                ///Detail
                Row(
                  children: [

                    ///Title & Genre
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        ///Title
                        Text(
                          'Bohemian',
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
                          'Documentary',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: darkwhite,
                          ),
                        ),
                      ],
                    ),

                    Spacer(),

                    ///Rate
                    Icon(
                      Icons.star,
                      color: white6,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: white6,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: myYellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: myYellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: myYellow,
                      size: 18,
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}