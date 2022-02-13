import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => 
      Scaffold(
        body: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}