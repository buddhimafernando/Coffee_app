import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeeDescription;
  final String coffeePrice;

  CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeeDescription,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(15.0),
        width: 180,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 12, 12, 12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // coffee image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(coffeeImagePath),
            ),

            // coffee name
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    coffeeDescription,
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: Color.fromARGB(255, 94, 94, 94),
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),

            // price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$" + coffeePrice,
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 136, 0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
