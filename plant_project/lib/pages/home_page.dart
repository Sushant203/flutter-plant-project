import 'package:flutter/material.dart';
import 'package:my_app/models/product_model.dart';
import 'package:my_app/widgets/home_categorty.dart';
import 'package:my_app/widgets/home_filter.dart';
import 'package:my_app/widgets/home_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<Map<String, dynamic>> categories = [
    {"id": 1, "name": "All"},
    {"id": 2, "name": "Indoor"},
    {"id": 3, "name": "Outdoor"},
    {"id": 4, "name": "Aromatic"},
    {"id": 5, "name": "Succulent"},
  ];

  List<ProductModel> products = [
    ProductModel(
        productName: "first product",
        productImage:
            "https://images.pexels.com/photos/16772775/pexels-photo-16772775/free-photo-of-black-and-white-photograph-of-flowers.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        isFavourite: true,
        category: "Indoor",
        price: 44.44),
    ProductModel(
        productName: "first product",
        productImage:
            "https://images.pexels.com/photos/955086/pexels-photo-955086.jpeg?auto=compress&cs=tinysrgb&w=600",
        isFavourite: true,
        category: "Indoor",
        price: 8.99),
    ProductModel(
        productName: "first product",
        productImage:
            "https://images.pexels.com/photos/1122629/pexels-photo-1122629.jpeg?auto=compress&cs=tinysrgb&w=600",
        isFavourite: false,
        category: "Indoor",
        price: 4.55),
    ProductModel(
        productName: "first product",
        productImage:
            "https://images.pexels.com/photos/18969973/pexels-photo-18969973/free-photo-of-water-flowing-between-rocks-photographed-in-long-exposure.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        isFavourite: false,
        category: "Indoor",
        price: 9.99),
    ProductModel(
        productName: "first product",
        productImage:
            "https://images.pexels.com/photos/19187317/pexels-photo-19187317/free-photo-of-hidden.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        isFavourite: false,
        category: "Indoor",
        price: 4.5),
  ];

  Map<String, dynamic> selectedCategory = categories.first;
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            homeTitle(context),
            SizedBox(
              height: deviceHeight * 0.03,
            ),
            home_filter(context),
            SizedBox(
              height: deviceHeight * 0.02,
            ),
            homeCategory(
                context: context,
                deviceHeight: deviceHeight,
                categories: categories,
                selectedCategory: selectedCategory,
                onClick: (Map<String, dynamic> category) {
                  setState(() {
                    selectedCategory = category;
                  });
                }),
            SizedBox(
              height: deviceHeight * 0.035,
            ),
            Container(
              height: deviceHeight * 0.35,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Card(
                      color: Colors.white,
                      elevation: 3.0,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        margin: EdgeInsets.only(left: 5),
                        width: deviceWidth * 0.4,
                        // color: Colors.blue,
                        child: Column(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              // color: Colors.red,
                              child: Container(
                                height: deviceHeight * 0.15,
                                width: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "https://images.pexels.com/photos/1260755/pexels-photo-1260755.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
