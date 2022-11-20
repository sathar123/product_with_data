


import 'package:flutter/material.dart';

import 'data.dart';

class Product_screen extends StatelessWidget {
  const Product_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Product'),),
      body: GridView(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: data.map((product) {
        return GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('single-product',arguments: product['id']);
          },
          child: Card(
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(product['image']))
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 1.0,right: 90),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product['name']),
                      Text('\$ ${product['price'].toString()}'),
                    ],
                  ),
                )



              ],
            ),
          ),
        );
      }).toList(),
      )

    );
  }
}
