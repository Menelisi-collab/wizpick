import 'package:flutter/material.dart';
import 'package:wizpick_app/app_screens/second_screen.dart';
import 'package:wizpick_app/app_screens/thrird_screen.dart';

import '../pallete.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        HeadingText(),
        InfoBox(),
        LoginButton(),
        MembershipField(),
        SizedBox(
          height: 100,
        ),
      ],
    );
  }
}

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                'assets/images/william-daigneault-ju3eqN0gl6Y-unsplash.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)),
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Text(
            'WizPick',
            style: TextStyle(
              height: 10,
              fontSize: 60,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'JosefinSans',
            ),
          ),
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("Email widget created");

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.all(60),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  cursorColor: Colors.lime,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Username',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.yellow,
                    ),
                    hintStyle: kBodyText,
                  ),
                  style: kBodyText,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  cursorColor: Colors.lime,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock, color: Colors.yellow),
                    hintStyle: kBodyText,
                  ),
                  obscureText: true,
                  style: kBodyText,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                )),
            SizedBox(height: 10),
            Text(
              'forgot password?',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  bool? isResponsive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      alignment: Alignment.center,
      padding: EdgeInsets.all(32),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            backgroundColor: Colors.lightGreenAccent,
            foregroundColor: Colors.blue,
            minimumSize: Size(200, 50),
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.yellowAccent,
              fontFamily: 'JosefinSans',
            )),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GamePage()),
          );
        },
        child: Text('Login'),
      ),
    );
  }
}

class MembershipField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUpPage()),
        );
      },
      child: Container(
        child: SizedBox(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not A Member?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Register Now',
                  style: TextStyle(
                      color: Colors.yellowAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
