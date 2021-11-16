// The following code was added in "pubspec.yaml" for registration of assets to include images in the app:
// flutter:
//   assets:
//     - assets/images/
// assets/images/ is the directory inside the project folder where images are to be put
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter: Images in Gridview',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Some images in flutter"),
        ),
        body: const Center(
          child: GridV(),
        ),
        ),
      );
  }
}

// Gridview Widget
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
        Container( //First
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('assets/images/image2.jpg').image,
              )
          ),
        ),
        Container( // Second
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('assets/images/hogwarts.jpg').image,
              )
          ),
        ),
        Container( // Third
          padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset('assets/images/image3.jpg').image,
                )
            ),
        ),
        Container( // Fourth
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset('assets/images/image1.jpg').image,
            )
          ),
        ),
        Container( // Fifth
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('assets/images/image.jpg').image,
              )
          ),
        ),

        // The code below is if we want the images with exact ratio along with background color
        Container( // Sixth
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/image1.jpg'),
          color: Colors.teal[500],
        ),
        Container( // Seventh
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/image2.jpg'),
          color: Colors.red[600],
        ),
        Container( // Eighth
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/image3.jpg'),
          color: Colors.blue[600],
        ),
        Container( // Ninth
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/hogwarts.jpg'),
          color: Colors.yellow[600],
        ),
        Container( //Tenth
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/image.jpg'),
          color: Colors.purple[600],
        ),
      ],
    );
  }
}
