import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var rnd = new Random();
  var quotes = <String>[
    'Do not try to do everything. Do one thing well.',
    'It doesn’t make sense to hire smart people and tell them what to do; we hire smart people so they can tell us what to do.',
    "Great things in business are never done by one person, they're done by a team of people.",
    'Don’t let the noise of others’ opinions drown out your own inner voice.',
    'If you define the problem correctly, you almost have the solution.',
    'Experts are clueless.',
    "You can't connect the dots looking forward; you can only connect them looking backwards. So you have to trust that the dots will somehow connect in your future. You have to trust in something - your gut, destiny, life, karma, whatever. This approach has never let me down, and it has made all the difference in my life."
        "Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle. As with all matters of the heart, you'll know when you find it.",
    'I want to put a ding in the universe.',
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma - which is living with the results of other people's thinking. Don't let the noise of others' opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.",
    "Great things in business are never done by one person. They're done by a team of people.",
    'Remembering that you are going to die is the best way I know to avoid the trap of thinking you have something to lose. You are already naked. There is no reason not to follow your heart.',
    'Innovation distinguishes between a leader and a follower.',
    'Design is not just what it looks like and feels like. Design is how it works.'
  ];
  String text = '';
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              // Steve Jobs Image
              // Padding
              Padding(
                padding: EdgeInsets.only(
                  right: screenWidth / 5,
                  left: screenWidth / 5,
                  top: screenHeight / 8,
                ),
                // SizedBox
                child: SizedBox(
                    width: screenWidth / 3,
                    height: screenHeight / 5,
                    child: Image.asset('images/stevejobs.png')),
              ),
              // Quotes Text
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight / 10,
                    left: screenWidth / 5,
                    right: screenWidth / 5),
                child: Text('Steve Jobs Quote : $text'),
              ),
              // Elevated Button
              Padding(
                padding: EdgeInsets.only(top: screenHeight / 10),
                child: SizedBox(
                  width: screenWidth / 3,
                  height: screenHeight / 20,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          int number = rnd.nextInt(quotes.length);
                          String test = quotes[number];

                          text = '$test';
                        });
                      },
                      child: Text('Inspire')),
                ),
              ),
            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
