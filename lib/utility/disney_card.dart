import 'package:flutter/material.dart';
import 'package:moviez_streaming/styles/color.dart';

class DisneyCard extends StatelessWidget {
  const DisneyCard({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Card 1
        Row(
          children: [

            ///Banner
            ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Image.asset(
                'assets/images/image 7.png', 
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
                  'Mulan Session',
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
                  'History, War',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: darkwhite,
                  ),
                ),

                SizedBox(height: 20),

                ///Rate
                Row(
                  children: [
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
                      color: white6,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: white6,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 30),

        ///Card 2
        Row(
          children: [

            ///Banner
            ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Image.asset(
                'assets/images/image 6.png', 
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
                  'Beauty & Beast',
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
                  'Sci-Fiction',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: darkwhite,
                  ),
                ),

                SizedBox(height: 20),

                ///Rate
                Row(
                  children: [
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
          ],
        ),
      ],
    );
  }
}