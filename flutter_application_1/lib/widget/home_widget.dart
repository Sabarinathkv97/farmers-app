import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class home_widget extends StatefulWidget {
  const home_widget({super.key});

  @override
  State<home_widget> createState() => _home_widgetState();
}

class _home_widgetState extends State<home_widget> {
  YoutubePlayerController _youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'TVzdrtt2BZ4',
      flags: YoutubePlayerFlags(autoPlay: false));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Container(
          color: Colors.white70,
          child: Center(
            child: Column(
              children: [
                Image.network(
                    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1690462847/banner/eyrk9ls3hidu00miboq6.jpg'),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Image.network(
                              'https://farmersfz.com/assets/v4/assets/test.png'),
                          Container(width: 60, child: Text('RESIDUE TESTING'))
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                              'https://farmersfz.com/assets/v4/assets/local.png'),
                          Container(
                              width: 80,
                              child: Center(child: Text('LOCKAL   SOURCING')))
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                              'https://farmersfz.com/assets/v4/assets/traceability.png'),
                          Container(child: Text('TRANCIABILITY'))
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                              'https://farmersfz.com/assets/v4/assets/deliverysame.png'),
                          Container(child: Text('ORDER NOW'))
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Container(
                    child: YoutubePlayer(controller: _youtubePlayerController),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.network(
                      'https://farmersfz.com/assets/v4/assets/safe-food/img-banner.jpg'),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      const Text(
                        'Safe food, Now traceable',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your food is now traceable!',
                                style: TextStyle(
                                    letterSpacing: 2,
                                    wordSpacing: 5,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                'We are revolutionizing the way the world consumes fruits & vegetables. With the help of our technology, your food is now completely traceable. Get insights about your produce, farmer & farming methods just by scanning a QR code!.'
                                ',',
                                style: TextStyle(
                                    letterSpacing: 2,
                                    wordSpacing: 5,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                'Our farmers community follow good agricultural practices under our regular supervision. Moreover, the produce is regularly tested for pesticides & strict quality checks ensure our customers get nothing but the freshest product out there.'
                                '',
                                style: TextStyle(
                                    letterSpacing: 2,
                                    wordSpacing: 5,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://farmersfz.com/assets/public/vegimg/MNTLF1.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                Text(
                                  "Offers",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://farmersfz.com/assets/public/vegimg/CART8.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                Text(
                                  "Vegitables",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://farmersfz.com/assets/public/vegimg/PVNP.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                Text(
                                  "Fruits",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://farmersfz.com/assets/public/vegimg/Chiscab1.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                Text(
                                  "Exotic",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://farmersfz.com/assets/public/vegimg/pome.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                Text(
                                  "Fresh cuts",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://farmersfz.com/assets/public/vegimg/healthmix1.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                Text(
                                  "Nutrition",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://farmersfz.com/assets/public/vegimg/Pot.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                Text(
                                  "Flavors",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://farmersfz.com/assets/public/vegimg/Carrot1.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                Text(
                                  "Salads",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
