import 'package:flutter/material.dart';

class FoodMenuItems extends StatelessWidget {
  final String name;
  final String ingredients;
  final String foodImage;
  final String price;

  const FoodMenuItems(
      {required this.name,
      required this.ingredients,
      required this.foodImage,
      required this.price,
      super.key});

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
                image: NetworkImage(foodImage),
                onError: (exception, stackTrace) {
                  Container(color: Color.fromARGB(255, 183, 183, 183));
                },
                fit: BoxFit.contain,
                alignment: Alignment.centerRight)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                ingredients,
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$$price',
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
