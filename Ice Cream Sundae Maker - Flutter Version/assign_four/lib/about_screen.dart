import 'package:flutter/material.dart';


class AboutScreen extends StatelessWidget{
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            const Text(
          'More Information about our ice cream',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 15.0),
        ),
            const Spacer(),
            const Text(
              'Who we are:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10.0),
            ),
            const Text(
              'Frank''s Ice Cream Company',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            const Spacer(),
            const Text(
              'Our Motto:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10.0),
            ),
            const Text(
              'We are electronically delicious!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            const Spacer(),
            const Text(
              'Launched:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10.0),
            ),
            const Text(
              'March 28th, 2022',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            const Spacer(),
            const Spacer(),
          const Text(
            'Developed by:',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10.0),
          ),
          const Text(
            'Schneider Campfort Jean-Pierre',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0),
          ),
            const Spacer(),
        ],
      )),
    );
  }

}