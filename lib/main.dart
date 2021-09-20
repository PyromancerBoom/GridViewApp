import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Main Code
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Skill Builder',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bruce\'s Retro Games"),
        ),
        body: const Center(
          // child: Text(""),
          child: GridV(),
        ),
        ),
      );
  }
}

// Grid View Widget
class GridV extends StatelessWidget {
  const GridV({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        // First four boxes using Decoration
        // Next four using Images.asset
        Container( //First
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('assets/images/image.jpg').image,
              )
          ),
        ),
        Container( // Second
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('assets/images/image.jpg').image,
              )
          ),
        ),
        Container( // Third
          padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset('assets/images/image.jpg').image,
                )
            ),
        ),
        Container( // Fourth
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset('assets/images/image.jpg').image,
            )
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/image.jpg'),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/image.jpg'),
          color: Colors.teal[600],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/image.jpg'),
          color: Colors.teal[600],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/image.jpg'),
          color: Colors.teal[600],
        ),
      ],
    );
  }
}
