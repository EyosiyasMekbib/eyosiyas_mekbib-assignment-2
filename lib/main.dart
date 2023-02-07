import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      title: 'La Cafe',
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFBF7F4),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: screenWidth,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(117)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://eyosiyasmekbib.github.io/image/hero.png'),
                      fit: BoxFit.cover),
                ),
                child: const Padding(
                    padding: EdgeInsets.fromLTRB(30, 60, 100, 50),
                    child: Image(
                      width: 100,
                      image: NetworkImage(
                          'https://eyosiyasmekbib.github.io/image/logo.png'),
                    )),
              )
            ],
          ),
          SizedBox(
            width: screenWidth,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 30),
              child: Text(
                'Hey, Melaku 👋',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color(0xffCB9658),
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
          )
        ],
      ),
    );
  }
}
