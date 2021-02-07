import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/HomeScreen.dart';
import 'package:flutter_fitness_app/res/MyColors.dart';

class IntroductionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/intro.png'),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width * 0.75,
              child: Text(
                "30 Days Fitness Challenges",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Track your fitness level by our smart Mobile App. Calories sleep and training.",
              style: TextStyle(color: Colors.black54, height: 1.5),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Spacer(),
                RawMaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  elevation: 2.0,
                  fillColor: MyColor.primary,
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15),
                  shape: CircleBorder(),
                )
              ],
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
