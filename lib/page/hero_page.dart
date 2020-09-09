import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewHero1())),
                  child: Column(
                    children: [
                      Hero(
                          tag: 'dc1',
                          child: FlutterLogo(
                            colors: Colors.red,
                          )),
                      Text('dc1'),
                    ],
                  )),
            ),
            Container(
              child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewHero2())),
                  child: Column(
                    children: [
                      Hero(
                          tag: 'dc2',
                          child: FlutterLogo(
                            colors: Colors.yellow,
                          )),
                      Hero(tag: '2', child: Text('dc2')),
                    ],
                  )),
            ),
            Container(
              child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewHero3())),
                  child: Column(
                    children: [
                      Hero(tag: 'dc3', child: FlutterLogo()),
                      Hero(tag: '3', child: Text('dc3')),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class NewHero1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(tag: '1', child: Text('dc1')),
      ),
      body: Center(
        child: Container(
          child: Hero(
            tag: 'dc1',
            child: FlutterLogo(
              size: 120,
              colors: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

class NewHero2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi2'),
      ),
      body: Center(
        child: Container(
          child: Hero(
            tag: 'dc2',
            child: FlutterLogo(
              size: 120,
              colors: Colors.yellow,
            ),
          ),
        ),
      ),
    );
  }
}

class NewHero3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi3'),
      ),
      body: Center(
        child: Container(
          child: Hero(
            tag: 'dc3',
            child: FlutterLogo(
              size: 120,
              // colors: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
