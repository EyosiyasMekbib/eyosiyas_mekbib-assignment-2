import 'package:flutter/material.dart';
import 'package:food_menu/menu_item.dart';
import 'package:food_menu/data.dart';

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
  final List<FoodMenuItem> _foods = [
    FoodMenuItem(
        id: 1,
        name: 'HOT HAM',
        ingredients: 'green tomato jam, mustard',
        price: '359.99',
        image:
            'https://www.thefoodinmybeard.com/wp-content/uploads/2018/10/greenclubhero.jpg'),
    FoodMenuItem(
        id: 2,
        name: 'CHICKEN',
        ingredients: 'with side of broccoli',
        price: '399.99',
        image:
            'https://ohsnapletseat.com/wp-content/uploads/2021/05/Chicken-with-Broccoli-Chinese-Recipe-6-scaled.jpg'),
    FoodMenuItem(
        id: 3,
        name: 'SPINACH',
        ingredients: 'tomatoes,garbanzo beans',
        price: '259.99',
        image:
            'https://www.wholesometales.com/wp-content/uploads/2017/02/spinach-and-tomatoes.jpg'),
    FoodMenuItem(
        id: 4,
        name: 'SALMON',
        ingredients: 'grilled green onions',
        price: '450.0',
        image:
            'https://www.sheknows.com/wp-content/uploads/2018/08/ctrveqynoll1fhoiqkrf.jpeg?w=600'),
  ];
  final List<FoodMenuItem> _hotDrinks = [
    FoodMenuItem(
        id: 1,
        name: 'Tea',
        ingredients: 'Mint Tea or Green Tea',
        price: '50.0',
        image:
            'https://www.verywellhealth.com/thmb/wOpYMxG1V_VxYcp4iJRmxRO4lZc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-693893647-588d21e413dd411cb1f2b0a0ea3e02da.jpg'),
    FoodMenuItem(
        id: 2,
        name: 'Americano',
        ingredients: 'Espresso and hot water',
        price: '80.0',
        image: 'https://cdn.buttercms.com/AB7ud4YSE6nmOX0iGlgA'),
    FoodMenuItem(
        id: 3,
        name: 'Latte',
        ingredients: 'Espresso with steamed milk',
        price: '90.0',
        image:
            'https://www.nespresso.com/ncp/res/uploads/recipes/nespresso-recipes-Latte-Macchiato.jpg'),
    FoodMenuItem(
        id: 4,
        name: 'Cappuccino',
        ingredients: 'Espresso and foam',
        price: '60.0',
        image:
            'https://dairyfarmersofcanada.ca/sites/default/files/styles/recipe_image/public/image_file_browser/conso_recipe/2022/Capuccino.jpg.jpeg?itok=J1pWPwe2'),
    FoodMenuItem(
        id: 5,
        name: 'Milk',
        ingredients: 'Special milk beverage',
        price: '50.0',
        image:
            'https://www.cardiosmart.org/images/default-source/news-article-images/70545718.jpg?sfvrsn=b5c370e0_2'),
  ];
  final List<FoodMenuItem> _coldDrinks = [
    FoodMenuItem(
        id: 1,
        name: 'Shake',
        ingredients: 'Banana, Orange, Mango',
        price: '100.0',
        image:
            'https://dairyfarmersofcanada.ca/sites/default/files/image_file_browser/conso_recipe/summer-of-shakes.jpg'),
    FoodMenuItem(
        id: 2,
        name: 'Soft Drink',
        ingredients: 'Cocacola, Sprite, Fanta',
        price: '80.0',
        image:
            'https://www.pngitem.com/pimgs/m/284-2842346_coca-cola-fanta-sprite-png-transparent-png.png'),
    FoodMenuItem(
        id: 3,
        name: 'Ice Coffee',
        ingredients: 'Espresso with Ice',
        price: '90.0',
        image:
            'https://images.immediate.co.uk/production/volatile/sites/2/2021/08/coldbrew-iced-latte-with-my-recipe-photo-by-@ellamiller_photo-f1e3d9e.jpg'),
  ];

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
                'Welcome, Melaku 👋',
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
                      Tab(text: 'Food'),
                      Tab(text: 'Hot Drinks'),
                      Tab(text: 'Cold Drinks')
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
                ListView.builder(
                  itemCount: _foods.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FoodMenuItems(
                        name: _foods[index].name,
                        ingredients: _foods[index].ingredients,
                        foodImage: _foods[index].image,
                        price: _foods[index].price);
                  },
                ),
                ListView.builder(
                  itemCount: _hotDrinks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FoodMenuItems(
                        name: _hotDrinks[index].name,
                        ingredients: _hotDrinks[index].ingredients,
                        foodImage: _hotDrinks[index].image,
                        price: _hotDrinks[index].price);
                  },
                ),
                ListView.builder(
                  itemCount: _coldDrinks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FoodMenuItems(
                        name: _coldDrinks[index].name,
                        ingredients: _coldDrinks[index].ingredients,
                        foodImage: _coldDrinks[index].image,
                        price: _coldDrinks[index].price);
                  },
                )
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
