import 'package:flutter/material.dart';
import 'package:navigation_and_routing/screen_two.dart';
import 'package:navigation_and_routing/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           InkWell(
             onTap: () {
            Navigator.pushNamed(context, RouteName.screenTwo,
            arguments: {
             'Node': 'js Module',
              'Flutter': 'good for making apps'
            }
            );

             },
             child: Container(
               height: 50,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: Colors.green,
               ),
               child: Center (
                 child: Text('Screen 1'),
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
