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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> pathstr = Uri.base.path.split("/");
    String name = "";

    for (int i = 1; i < pathstr.length; i++)
      {
        name += pathstr[i];
        if (i < pathstr.length - 1)
          {
            name += " ";
          }
      }

    print(pathstr);
    print("hello: ${name}");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color(0xff17080d),
      body: Center(
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xff121212),

        border: Border.all(width: 2.0),
        // borderRadius:
        borderRadius: BorderRadius.circular(20)
      ),
        // width: 200,
        padding: EdgeInsets.symmetric(vertical:20, horizontal: 40),
        child: IntrinsicHeight(
          child:Column(
            spacing: 17,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "♥",
              style: TextStyle(
                color: Color(0xfffa4e87),
                fontFamily: "Comfortaa",
                fontSize: 50
              ),
            ),
            Text(
              "I love uhh!",
              style: TextStyle(
                  color: Color(0xffffffff),
                  fontFamily: "Comfortaa",
                  fontSize: 20
              ),
            ),
            Text(
              "By ♥ from ${name}",
              style: TextStyle(
                  color: Color(0xffffffff),
                  fontFamily: "Comfortaa",
                  // color: Color(0xfffa4e87),
                  fontSize: 10
              ),
            ),
          ],
        ),)
        ),
      ),
    );
  }
}
