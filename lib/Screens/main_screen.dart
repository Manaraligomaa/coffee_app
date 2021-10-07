import 'package:flutter/material.dart';
import 'package:product_app/Screens/product_screen.dart';
import 'package:product_app/models/product.dart';
import '../constant.dart';
class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: kbackgroundcolor,
                  ),
                ),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return productcard(
                        product: products[index],
                        proindex: index,
                        lol: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetails(product: products[index],)));},
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class productcard extends StatelessWidget {
  const productcard({
    Key key, this.product,this.proindex,this.lol
  }) : super(key: key);
  final Product product;
  final int proindex;
  final Function lol;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kpadding, vertical: 10),
      child: Container(
        height: 190,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            InkWell(onTap:lol ,
              child: Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 120,
                width: 150,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      product.subtitle,overflow: TextOverflow.ellipsis,maxLines: 4,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text('Price: \$${product.price}'),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
