import 'package:coffee_app/util/coffee_tile.dart';
import 'package:coffee_app/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of coffee types
  final List coffeeType = [
    // [ coffee type, isSelected ]
    ['Cappucino', true],
    ['Latte', false],
    ['Milkcoffee', true],
    ['Espresso', true],
    ['Hot Chocolate', true]
  ];

  // user tapped on coffee types
  void coffeeTypeSelected(int index) {
    setState(() {
      // this loop makes every selection false
      for(int i=0; i<coffeeType.length; i++){
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 21, 21),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      // navigation bar
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: '',
        ),
      ]),
      body: Column(
        children: [
          //Find the best coffee for you
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(
                fontSize: 56,
              ),
            ),
          ),
          SizedBox(height: 25),

          //Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Find your coffee...",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  )),
            ),
          ),
          SizedBox(height: 25.0),

          //horizontal list for coffee types
          Container(
              height: 50,
              color: Colors.transparent,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeeType.length,
                  itemBuilder: (context, index) {
                    return CoffeeType(
                      coffeeType: coffeeType[index][0],
                      isSelected: coffeeType[index][1],
                      onTap: () {
                        coffeeTypeSelected(index);
                      },
                    );
                  })),

          //horizontal list of coffee tiles
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeTile(
                coffeeImagePath: 'assets/images/Cappucino.jpg',
                coffeeName: 'Cappucino',
                coffeeDescription: 'with Foam',
                coffeePrice: '\$4.99',
              ),
              CoffeeTile(
                coffeeImagePath: 'assets/images/Latte.jpg',
                coffeeName: 'Latte',
                coffeeDescription: 'with Foam',
                coffeePrice: '\$4.99',
              ),
              CoffeeTile(
                coffeeImagePath: 'assets/images/MilkCoffee.jpg',
                coffeeName: 'MilkCoffee',
                coffeeDescription: 'with Foam',
                coffeePrice: '\$4.99',
              ),
              CoffeeTile(
                coffeeImagePath: 'assets/images/Espresso.jpg',
                coffeeName: 'Espresso',
                coffeeDescription: 'with Foam',
                coffeePrice: '\$4.99',
              ),
              CoffeeTile(
                coffeeImagePath: 'assets/images/Hot_Chocolate.jpg',
                coffeeName: 'Hot Chocolate',
                coffeeDescription: 'with Whipped Cream',
                coffeePrice: '\$4.99',
              ),
              
            ],
          ))
        ],
      ),
    );
  }
}
