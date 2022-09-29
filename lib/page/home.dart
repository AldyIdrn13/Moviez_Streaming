import 'package:flutter/material.dart';
import 'package:moviez_streaming/animation/custom_trasition.dart';
import 'package:moviez_streaming/page/search.dart';
import 'package:moviez_streaming/styles/color.dart';
import 'package:moviez_streaming/utility/disney_card.dart';
import 'package:moviez_streaming/utility/featured_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              ///Background ↓↓↓↓↓
              Row(
                children: [
                  Flexible(
                    flex: 3,
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
                  Flexible(
                    flex: 7,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            white3,
                            white4,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            
              ///Main Screen ↓↓↓↓↓
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
        
                  ///AppBar ↓↓↓↓↓
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        ///Header
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Moviez',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: darkblue,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Watch much easier',
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
                        ///Search Icon/button
                        IconButton(
                          icon: Image.asset('assets/icons/search.png', height: 22),
                          onPressed: (){
                            Navigator.of(context).push(
                              CustomPageRoute(
                                Search(),
                              ),
                            );
                          }, 
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 30),
        
                  ///Featured ↓↓↓↓↓
                  SizedBox(
                    height: 279,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FeaturedCard(),
                      ],
                    ),
                  ),
                
                  SizedBox(height: 30),
        
                  ///From Disney (most) ↓↓↓↓↓
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
        
                        ///Heading of Section "From Disney" ↓↓↓↓↓
                        Text(
                          'From Disney',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: darkblue,
                          ),
                        ),
                      
                        SizedBox(height:20),
        
                        ///List Most Popular From Disney ↓↓↓↓↓
                        SizedBox(
                          height: 284,
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                              DisneyCard(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}