import 'package:demo/Model/product_data_model.dart';
import 'package:demo/Screens/DashBoard/dash_board_screen.dart';
import 'package:demo/utils/constant.dart';
import 'package:flutter/material.dart';

Widget TopBodys(Size size, BuildContext context, ProductData product) {
  return Container(
    height: size.height * 0.30,
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dashboard_page()),
        );
      },
      splashColor: kPrimaryColor.withOpacity(0.23),
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.5,
        height: size.height * 0.30,
        child: Column(
          children: [
            Image.asset(
              product.image,
              height: size.height * 0.18,
            ),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: size.width*0.18,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "${product.title}\n",
                              style: Theme.of(context).textTheme.subtitle2),
                          TextSpan(
                            text: "data",
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
               /*   Spacer(),*/
                  Text(
                    "\$${product.price}",
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.green,
                        ),
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
