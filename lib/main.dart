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

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
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
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, bottom: 30, right: 30),
            child: Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    controller: _tabController,
                    unselectedLabelColor: Color(0xffA4A4A4),
                    labelColor: Color(0xffffffff),
                    labelPadding: EdgeInsets.only(left: 30, right: 30),
                    isScrollable: true,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff5F4D3C)),
                    tabs: [
                      Tab(text: 'Catagory1'),
                      Tab(text: 'Category2'),
                      Tab(text: 'Category3')
                    ]),
              ),
            ),
          ),
          Container(
            height: 300,
            width: screenWidth,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TabBarView(controller: _tabController, children: [
                Text('Catagory1'),
                Text("Category2"),
                Text("category3")
              ]),
            ),
          )
        ],
      ),
    );
  }
}
