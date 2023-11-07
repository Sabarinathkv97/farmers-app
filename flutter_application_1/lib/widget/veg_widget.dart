import 'package:flutter/material.dart';

class veg_widget extends StatefulWidget {
  const veg_widget({super.key});

  @override
  State<veg_widget> createState() => _veg_widgetState();
}

class _veg_widgetState extends State<veg_widget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Offers",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: item.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 4,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.3),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                image[index],
                                width: 280,
                              ),
                              Text(
                                item[index],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(decription[index]),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Know your farmer',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.black,
                                        height: 10,
                                        endIndent: 260,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'MRP:' + price[index],
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            oldPrice[index],
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.red,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 38,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.green),
                                    child: Center(
                                      child: Text(
                                        'ADD TO CART',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<dynamic> image = [
    "https://farmersfz.com/assets/public/vegimg/TMT151.jpg",
    "https://farmersfz.com/assets/public/vegimg/bott.jpg",
    "https://farmersfz.com/assets/public/vegimg/Chiscab1.jpg",
    "https://farmersfz.com/assets/public/vegimg/CART8.jpg",
  ];
  List<String> item = [
    'Tomato (450g-550gm)',
    'Bottle Ground(450g- 550gm)',
    'Chinees Cabbage',
    'Carrot (450g-550gm)',
  ];
  List price = [
    '₹17.00',
    '₹13.00',
    '₹53.50',
    '₹37.00',
  ];
  List oldPrice = [
    '₹27.30',
    '₹85.05',
    '₹63.00',
    '₹59.85',
  ];

  List decription = [
    'red banana is a unique veriety of banana tha is native to india .it has a deep red',
    'One banana supplys 30 persantage of dailt vitamin B6 requirement and is rich in vitamin c and ',
    'Loaded with antioxidants and fiber, Chinese cabbage is the perfect addition to your daily',
    'Highly nutritious & crunchy, banana are a must-have in your healthy diet! The fiber in carrots',
  ];
}
