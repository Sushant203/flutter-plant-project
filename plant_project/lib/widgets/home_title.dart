import 'package:flutter/material.dart';

Widget homeTitle(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Best Plants For \nOur Green House",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      Stack(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/19284158/pexels-photo-19284158/free-photo-of-a-horse-in-a-field.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          Positioned(
            right: 0,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Theme.of(context).primaryColor,
              child: Text(
                "2",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          )
        ],
      )
    ],
  );
}
