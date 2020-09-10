import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vector;

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final pageController = PageController(viewportFraction: 0.7);

  @override
  void initState() {
    pageController.addListener(() {
      pageController.addListener(() {});
    });
    super.initState();
  }

  final List<Map<String, String>> listado = [
    {'id': '1', 'img': 'assets/img1.jpg'},
    {'id': '2', 'img': 'assets/img2.jpg'},
    {'id': '3', 'img': 'assets/img3.jpg'},
    {'id': '4', 'img': 'assets/img4.jpg'},
    {'id': '5', 'img': 'assets/img5.jpg'},
    {'id': '6', 'img': 'assets/img6.jpg'},
    {'id': '7', 'img': 'assets/img7.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: listado.length,
        itemBuilder: (context, index) {
          final id = listado[index]["id"];
          final img = listado[index]["img"];
          return Transform(
              alignment: Alignment.centerRight,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(vector.radians(30)),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HeroPageView(
                        id: id,
                        img: img,
                      ),
                    )),
                child: Container(
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Hero(
                    tag: id,
                    child: Image.asset(
                      img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}

class HeroPageView extends StatelessWidget {
  final String id;
  final String img;

  const HeroPageView({Key key, this.id, this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Hero(
            tag: id,
            child: Center(
                child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      img,
                      fit: BoxFit.cover,
                    )))),
      ),
    );
  }
}
