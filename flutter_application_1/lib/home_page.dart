import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/cuts_widget.dart';
import 'package:flutter_application_1/widget/exotic_widget.dart';
import 'package:flutter_application_1/widget/fruits_widget.dart';
import 'package:flutter_application_1/widget/gourment_widget.dart';
import 'package:flutter_application_1/widget/home_widget.dart';
import 'package:flutter_application_1/widget/nutrition_widget.dart';
import 'package:flutter_application_1/widget/offer_widget.dart';
import 'package:flutter_application_1/widget/packed_widget.dart';
import 'package:flutter_application_1/widget/sub_widget.dart';
import 'package:flutter_application_1/widget/veg_widget.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Row(
            children: [
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.green)),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
          title: Row(
            children: [
              SizedBox(
                width: 0,
              ),
              Text(
                'Farmers Fresh Zone',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 18,
              ),
              Icon(
                Icons.location_on,
                color: Colors.black,
                size: 13,
              ),
              Text(
                'Kannur',
                style: TextStyle(color: Colors.green, fontSize: 12),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.green,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 60,
                    child: Tab(
                      child: Row(children: [
                        Text('Home'),
                        SizedBox(
                          width: 5,
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Tab(child: Text('Offers')),
                  ),
                  Container(
                    width: 80,
                    child: Tab(child: Text('Vegitables')),
                  ),
                  Container(
                    width: 60,
                    child: Tab(child: Text('Fruits')),
                  ),
                  Container(
                    width: 60,
                    child: Tab(child: Text('Exotic')),
                  ),
                  Container(
                    width: 60,
                    child: Tab(child: Text('Frush cuts')),
                  ),
                  Container(
                    width: 80,
                    child: Tab(child: Text('Nutrition charges')),
                  ),
                  Container(
                    width: 60,
                    child: Tab(child: Text('Packed flavors')),
                  ),
                  Container(
                    width: 80,
                    child: Tab(child: Text('Gourment salads')),
                  ),
                  Container(
                    width: 110,
                    child: Tab(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            height: 25,
                            width: 110,
                            child: Center(
                              child: Text(
                                'Subscription',
                                style: TextStyle(color: Colors.green),
                              ),
                            ))),
                  )
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: TabBarView(children: [
                  home_widget(),
                  offer_widget(),
                  veg_widget(),
                  fruits_widget(),
                  exotic_widget(),
                  cuts_widget(),
                  nutrition_widget(),
                  packed_widget(),
                  gourment_widget(),
                  sub_widget()
                ]))
          ],
        ),
      ),
    );
  }
}
