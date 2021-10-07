import 'package:flutter/material.dart';
import 'package:product_app/models/product.dart';

import '../constant.dart';

class ProductDetails extends StatelessWidget {
  final Product product;

  const ProductDetails({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Product Details"),
        elevation: 0,
        backgroundColor: kprimarycolor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Container(
          width: double.infinity,
          height: 470,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: kbackgroundcolor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: MediaQuery.of(context).size.width * 0.8,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Center(child: ProductImage(
                      image: product.image,
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(product.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  child: Text('Price: \$${product.price}'),
                  padding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                ),
              )
            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 16,top:10),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                child: Text(product.ingredients,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key key,
    this.image,
    this.product
  }) : super(key: key);
  final String image;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.7,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
