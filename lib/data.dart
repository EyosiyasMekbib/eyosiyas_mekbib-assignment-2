const List<Map<String, dynamic>> hotDrinks = [
  {
    'id': 1,
    'name': 'Tea',
    'ingredients': 'Mint Tea or Green Tea',
    'price': '50',
    'image': 'https://cdn.buttercms.com/AB7ud4YSE6nmOX0iGlgA',
    'type': 'hot_drink'
  },
  {
    'id': 2,
    'name': 'Americano',
    'ingredients': 'Espresso and hot water',
    'price': '80',
    'image': 'https://cdn.buttercms.com/AB7ud4YSE6nmOX0iGlgA',
    'type': 'hot_drink'
  },
  {
    'id': 3,
    'name': 'Latte',
    'ingredients': 'Espresso with steamed milk',
    'price': '50',
    'image': 'https://cdn.buttercms.com/AB7ud4YSE6nmOX0iGlgA',
    'type': 'hot_drink'
  },
  {
    'id': 4,
    'name': 'Cappuccino',
    'ingredients': 'Espresso and equal proportions Of steamed milk and foam',
    'price': '50',
    'image': 'https://cdn.buttercms.com/AB7ud4YSE6nmOX0iGlgA',
    'type': 'hot_drink'
  },
  {
    'id': 5,
    'name': 'Milk',
    'ingredients': 'Special milk beverage made from grass fed cows',
    'price': '50',
    'image': 'https://cdn.buttercms.com/AB7ud4YSE6nmOX0iGlgA',
    'type': 'hot_drink'
  }
];

class FoodMenuItem {
  int id;
  String name;
  String ingredients;
  String price;
  String image;

  FoodMenuItem(
      {required this.id,
      required this.name,
      required this.ingredients,
      required this.price,
      required this.image});
}
