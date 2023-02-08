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
              padding: EdgeInsets.fromLTRB(30, 30, 0, 10),
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
            padding: EdgeInsets.only(left: 30, right: 30),
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
            width: screenWidth,
            height: 460,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
              child: TabBarView(controller: _tabController, children: [
                ListView(
                  children: [
                    MenuItem(),
                    MenuItem(),
                    MenuItem(),
                    MenuItem(),
                    MenuItem(),
                    MenuItem(),
                    MenuItem(),
                    MenuItem(),
                    MenuItem(),
                    MenuItem(),
                  ],
                ),
                Text("Category2"),
                Text("category3")
              ]),
            ),
          ),
          Text(
            'All Items Listed are VAT Inclusive',
            style: TextStyle(
                color: Color.fromARGB(255, 116, 9, 9),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.green),
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.fromLTRB(20, 6, 20, 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffffffff),
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/1566837/pexels-photo-1566837.jpeg'),
                fit: BoxFit.contain,
                alignment: Alignment.centerRight)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Pizza',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                'Somejth, tsljdfa, sfjlks',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$324',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              )
            ])
          ],
        ),
      ),
    );
  }
}
