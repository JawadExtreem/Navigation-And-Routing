import 'package:flutter/material.dart';
import 'package:navigation_and_routing/screen_three.dart';
import 'package:navigation_and_routing/utils/routes_name.dart';

class ScreenTwo extends StatefulWidget {

  dynamic data ;

  ScreenTwo({Key? key,
   required this.data
  }) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['Node']),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenThree);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center (
                  child: Text('Screen 2'),
                ),
              ),
            )
          ],
        ),
      ),
    );;
  }
}
