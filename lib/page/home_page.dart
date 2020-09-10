import 'package:app_hero_test/page/hero_page.dart';
import 'package:app_hero_test/page/view_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My dcelis'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeroPage(),
                  )),
              child: Container(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    'Hero',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    // textAlign: TextAlign.center,
                  ),
                ),
                color: Colors.cyan,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewPage(),
                  )),
              child: Container(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    'Page view',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    // textAlign: TextAlign.center,
                  ),
                ),
                color: Colors.cyan,
              ),
            ),
          )
        ],
      ),
    );
  }
}
