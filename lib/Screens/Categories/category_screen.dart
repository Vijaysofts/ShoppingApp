import 'package:demo/Model/product_model.dart';
import 'package:demo/Screens/Categories/categoryBody.dart';
import 'package:demo/utils/SearchBox.dart';
import 'package:flutter/material.dart';

class Category_page extends StatefulWidget {
  @override
  _categorytstate createState() => _categorytstate();
}

class _categorytstate extends State<Category_page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Categories",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (ctx, i) => CategoryData(
                products[i],
                size,
                context,
              ),
            ),
          ),
        ],
      ),
    );
  }
} /*
GridView.count(
crossAxisCount: 2,
children: List.generate(
products.length,
(index) {
return CategoryData(
products[index],
size,
context,
);
},
),
),*/
