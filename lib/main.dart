import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I love you!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'I love you!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> pathstr = Uri.base.path.split("/");
    String name = "";

    for (int i = 1; i < pathstr.length; i++) {
      name += pathstr[i];
      if (i < pathstr.length - 1) {
        name += " ";
      }
    }

    return Scaffold(
      backgroundColor: Color(0xff17080d),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff121212),
            border: Border.all(width: 2.0, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: IntrinsicHeight(
            child: Column(
              spacing: 17,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "♥",
                  style: TextStyle(
                    color: Color(0xfffa4e87),
                    fontFamily: "Comfortaa",
                    fontSize: 50,
                  ),
                ),
                Text(
                  "I love uhh!",
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: "Comfortaa",
                    fontSize: 20,
                  ),
                ),
                Text(
                  "By ♥ from $name",
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: "Comfortaa",
                    // color: Color(0xfffa4e87),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
