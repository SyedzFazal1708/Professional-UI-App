// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /////
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Icon(
                Icons.sort_rounded,
                size: 28,
              ),
            ),
          ),
          /////////
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color(0xFFF65959),
                // size: 28,
              ),
              Text(
                "New York, USA",
                style: TextStyle(
                  //color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  //letterSpacing: 1.5,
                ),
              ),
            ],
          ),
          ////////
          ///////
          ///////
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.search,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
