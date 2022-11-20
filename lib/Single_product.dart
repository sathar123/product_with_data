
import 'package:flutter/material.dart';
import 'package:passdata/data.dart';

class Single_product extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final pid = ModalRoute.of(context)?.settings.arguments;
    final product = data.firstWhere((element) => element['id'] == pid);
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
      ),
    body: Container(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(

                  image: NetworkImage(product['image']))
            ),
          ),

          Text('Description: ${product['description']}'),
          SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(onPressed: (){}, child: Row(children: [Icon(Icons.shopping_cart_rounded),Text('Buy Now')],)))

        ],
      ),
    ),
    );
  }
}
