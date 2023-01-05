import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: grd(),
    debugShowCheckedModeBanner: false,
  ));
}

class grd extends StatelessWidget {
  var iamges = [
    "assets/ui_grid/india.webp",
    "assets/ui_grid/USA.jpeg",
    "assets/ui_grid/thailand.jpeg",
    "assets/ui_grid/russia.jpg",
    "assets/ui_grid/england.jpg",
    "assets/ui_grid/china.jpeg"
  ];
  var texts = ["INDIA", "USA", "THAILAND", "RUSSIA", "ENGLAND", "CHINA"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("grid view"),
      ),
      body: GridView.builder(
          itemCount: iamges.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return Stack(children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white70,
                  ),
                  borderRadius: BorderRadius.circular(20),

                  image: DecorationImage(

                    image: AssetImage(
                      iamges[index],
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  texts[index],
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ]);
          }),
    );
  }
}