import 'package:flutter/material.dart';
import 'package:onboard/on_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<double> filter = [
    1,
    0,
    0,
    1.9 - 2.2,
    0,
    1,
    0,
    0.0,
    0.3,
    0,
    0,
    1,
    0,
    0,
    .5,
    0,
    0,
    0,
    1,
    0.2
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          //Photo by Adeolu Ajayi: https://www.pexels.com/photo/close-up-photo-of-green-leaf-2577626/
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/pexels.jpg'),
                alignment: Alignment.center,
                fit: BoxFit.cover),
          ),

          child: Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/log.png',
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Masha plus'.toUpperCase(),
                      style: TextStyle(
                          letterSpacing: 3,
                          shadows: const [
                            Shadow(
                                color: Colors.black,
                                blurRadius: 2,
                                offset: Offset(1, -3))
                          ],
                          fontSize: 30,
                          color: Colors.amber[900],
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const Spacer(),
              const OnBoard(),
            ],
          ),
        ));
  }
}
