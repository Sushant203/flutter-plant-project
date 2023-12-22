import 'package:flutter/material.dart';

Widget home_filter(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  return Row(
    children: [
      Expanded(
        child: Card(
          elevation: 0,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: 50,
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.blueGrey[300],
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Search Plant",
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        width: deviceWidth * 0.02,
      ),
      FloatingActionButton(
        backgroundColor: Colors.black,
        splashColor: Colors.grey,
        onPressed: () {},
        child: Icon(
          Icons.filter_alt_outlined,
          color: Colors.white,
          size: 30,
        ),
      )
    ],
  );
}
