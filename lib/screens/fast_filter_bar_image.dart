import 'package:flutter/material.dart';
import 'package:ui_design/utils/icons.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              buildFilterItem(
                '5 things to know about the \'conundrum\' of lupus',
                'Matt Villano',
                'Sunday, 9 May 2021',
                photo1, // replace with your image URL
              ),
              SizedBox(height: 10),
              buildFilterItem(
                '4 ways families can ease anxiety together',
                'Zain Kahn',
                'Monday, 10 May 2021',
                photo2, // replace with your image URL
              ),
               SizedBox(height: 10),
              buildFilterItem(
                '4 ways families can ease anxiety together',
                'Zain Kahn',
                'Monday, 10 May 2021',
                photo3, // replace with your image URL
              ),
              // Add more items as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFilterItem(String title, String author, String date, String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Color.fromARGB(255, 255, 255, 255).withOpacity(0.5), BlendMode.darken),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            author,
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 4),
          Text(
            date,
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}