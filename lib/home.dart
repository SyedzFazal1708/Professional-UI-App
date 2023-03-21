// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:attractive_ui/home_appbar.dart';
import 'package:flutter/material.dart';

class Home_src extends StatelessWidget {
  const Home_src({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                width: 160,
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "asset/city${index + 1}.jpg"),
                                    fit: BoxFit.cover,
                                    opacity: 0.7,
                                  ),
                                ),
                                ////////////
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        Icons.bookmark_border_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //////////
              SizedBox(height: 10),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 200,

                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image:
                                      AssetImage("asset/city${index + 1}.jpg"),
                                  fit: BoxFit.cover,
                                  opacity: 0.7,
                                ),
                              ),
                              ////////////
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.bookmark_border_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          ///////
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      )),
    );
  }
}
