import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(15.0),
        width: 200,
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
                child: Image.asset('assets/images/Cappucino.jpg'),
              ),
              SizedBox(height: 10),

              // coffee name
              Text(
                "Cappucino",
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
                ),
              Text(
                "With dark coffee",
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: Color.fromARGB(255, 94, 94, 94),
                  fontWeight: FontWeight.w700,
                ),)
             
            ],
          ),
      ),
    );
  }
}
