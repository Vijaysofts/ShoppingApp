import 'package:demo/Model/product_model.dart';
import 'package:demo/Screens/ProductDetail/product_body.dart';
import 'package:demo/utils/constant.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset('assets/images/favorite.png',height: 30,width: 30,),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Added To WishList..."),
          ));
          },
        ),
      ],
    );
  }
}
