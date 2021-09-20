import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  Widget build(BuildContext context) {
    final someimages = [
      ["assets/images/image.jpg"],
      ['assets/images/broccoli.png']
    ];
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        ...someimages.map(
            (i) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Material(
                  child: Image.asset(
                    i.first,
                    fit: BoxFit.fitWidth,
                  ),
                )
              ]
            )
        ),
        Container( //First
          padding: const EdgeInsets.all(8),
          child: const Text("He'd have you all unravel at the"),
          color: Colors.teal[100],
        ),
        Container( // Second
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          color: Colors.teal[200],
        ),
        Container( // Third
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          color: Colors.teal[300],
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
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
      ],
    );
  }
}
