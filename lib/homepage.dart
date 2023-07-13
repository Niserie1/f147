import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.deepPurple,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          print(index); //sayfalara yönlendirme
        },
        items: [
          Icon(
            Icons.home,
            color: Colors.amber,
          ),
          Icon(Icons.location_on_rounded, color: Colors.amber),
          Icon(
            Icons.pets,
            color: Colors.amber,
          ),
          Icon(Icons.forum, color: Colors.amber),
          Icon(Icons.settings, color: Colors.amber),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0, //transparanda blur katar
        title: Text('Happy Tails'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.amber.shade300,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          onPressed: () {
            //menu acma
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //menu acma
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Colors.grey[350],
              height: 330,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Ara | profil, ilan vs. ',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff0c3469),
                      ),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Minik dostlarımız',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Color.fromARGB(255, 10, 10, 11),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '  güvenli ellerde',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromARGB(255, 10, 10, 11),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '    HappyTails ile',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 10, 10, 11),
                                          ),
                                        ),
                                        Text(
                                          '    evinizdesiniz',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 10, 10, 11),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/paw and hand2.png'),
                            ),
                            // borderRadius: BorderRadius.zero,
                            //   topRight: Radius.circular(10),
                            //   bottomRight: Radius.circular(10),
                            // ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey[300],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  BottomContainer(
                    color: Color.fromARGB(255, 155, 114, 78),
                    name: 'İLANLARA BAK',
                    title: 'Evcil dostun için evde bakım hizmeti',
                    subtitle: 'Öne çıkarılan profiller',
                    padding: EdgeInsets.all(8.0),
                    price: 10.99,
                    images: 'assets/paw and hand2.png',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomContainer extends StatelessWidget {
  final Color color;
  final double price;
  final String name;
  final String title;
  final String subtitle;
  final String images;
  final EdgeInsets padding;

  const BottomContainer({
    required this.color,
    required this.price,
    required this.name,
    required this.title,
    required this.subtitle,
    required this.images,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: 160,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 190,
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$ $price HR'),
                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff0c3469),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Color(0xff0c3469),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Color(0xff0c3469),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 190,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/paw and hand2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
