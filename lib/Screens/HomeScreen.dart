import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:starbucksapp/Data/Data.dart';

import 'ItemScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Good\nMorning!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  'assets/man.png',
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 250,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/starbucks.jpg'),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/drinks.png',
                        height: 50,
                      ),
                      Text(
                        'Drinks',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/food.png',
                        height: 50,
                      ),
                      Text(
                        'Food',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/product.png',
                        height: 50,
                      ),
                      Text(
                        'Product',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/store.png',
                        height: 50,
                      ),
                      Text(
                        'Store',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DefaultTabController(
            length: 7,
            child: TabBar(
              labelStyle: TextStyle(
                fontWeight: FontWeight.w700,
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Color(0xff00704a),
              unselectedLabelColor: Color(0xff5f6368),
              isScrollable: true,
              indicator: MD2Indicator(
                indicatorSize: MD2IndicatorSize.full,
                indicatorHeight: 3,
                indicatorColor: Color(0xff00704a),
              ),
              tabs: [
                Tab(
                  text: 'Coffees',
                ),
                Tab(
                  text: 'Tea',
                ),
                Tab(
                  text: 'Drinks',
                ),
                Tab(
                  text: 'Bagels',
                ),
                Tab(
                  text: 'Food',
                ),
                Tab(
                  text: 'Product',
                ),
                Tab(
                  text: 'More',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 380,
            child: PageView.builder(
                itemCount: coffees.length,
                controller: PageController(viewportFraction: 0.7),
                onPageChanged: (int index) => setState(() => _index = index),
                itemBuilder: (context, i) {
                  return Transform.scale(
                    scale: i == _index ? 1 : 0.9,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ItemScreen(
                                  item: coffees[i],
                                )));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: i == _index ? Colors.red : Color(0xff00704a),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(),
                            Image.asset(
                              coffees[i].image,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
