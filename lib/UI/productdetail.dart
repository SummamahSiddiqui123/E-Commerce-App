import 'package:flutter/material.dart';
import 'package:myfirstclass/constants/constants.dart';
import 'package:myfirstclass/model/product.dart';

class ProductDetailsView extends StatelessWidget {
  Product product;
  ProductDetailsView(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(product.image))),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 40,),
                      Text(
                        "${product.name}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      Text(
                        "Rating: ${product.rating}",
                        style: TextStyle(
                            fontSize: 14,
                            color:Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Description:",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)
                    ),
                  Text(
                    "${product.desc}",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "Size",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)
                    ),
                  Text("41 / 42 / 43 / 44 /45",
                  style: TextStyle(fontSize: 20)
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)
                    ),
                  Text(
                    "${product.price}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    side: BorderSide(color: Colors.white, width: 2),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    )),
                    onPressed:(){
                      Constants.cartList.add(product);
                    }, 
                    child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag,
                    color: Colors.white, 
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              )
              )]
              )
              )
              ],
              ),
      ),
          );
  }
}

              