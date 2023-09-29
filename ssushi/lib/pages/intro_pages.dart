import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ssushi/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double width = constraints.maxWidth;
          double height = constraints.maxHeight;

          return Padding(
            padding: EdgeInsets.all(width * 0.05),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: height * 0.02),
                  Text(
                    "SAKURA SUSHI",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: width * 0.07,
                      //  color: Colors.white,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Padding(
                    padding: EdgeInsets.all(width * 0.10),
                    child: Image.asset(
                      'images/sushi3.png',
                      width: width * 0.7,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    'THE TASTE OF JAPANESE FOOD',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: width * 0.08,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "Feel the taste of the most popular Japanese food from anywhere and anytime",
                    style: TextStyle(color: Colors.grey[300], height: 2),
                  ),
                  SizedBox(height: height * 0.02),
                  MyButton(
                    text: "Get Started",
                    onTap: () {
                      //go to menu page
                      Navigator.pushNamed(context, '/menupage');
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
