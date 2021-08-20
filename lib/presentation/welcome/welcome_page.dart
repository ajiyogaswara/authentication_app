import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("CodeFirst",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                )),
            Text("Start Your Future Now",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                )),
            Expanded(
              child: Image.asset(
                'assets/images/welcome_image.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_circle_down_sharp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
