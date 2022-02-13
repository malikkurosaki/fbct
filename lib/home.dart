import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => 
      Scaffold(
        drawer: sizingInformation.isMobile? myDrawer(): null,
        appBar: sizingInformation.isMobile? myAppBar(): null,
        body: Column(
          children: [
            Visibility(
              visible: !sizingInformation.isMobile,
              child: Container(
                color: Colors.blue[900],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Center(
                        child: Image.asset('splash.png', 
                          width: 70,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: (){
            
                              }, 
                              child: Text("Home")
                            ),
                            TextButton(
                              onPressed: (){
                                
                              }, 
                              child: Text("Big Buy Contest")
                            )
                          ],
                        )
                      )
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: ListView(
                children: [
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 500,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('bg_2.png',
                              width: 300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 700,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("BUILT ON BINANCE SMART CHAIN",
                              textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 24
                                ),
                              ),
                              Text("Hyper-Deflationary Tokens",
                              textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 62
                                ),
                              ),
                              Text("We Wealthy Beyond Your Limit Is Our Motto. But Good Thing Takes Time, Only Those With High Determination Will Stay. Creating Transparent And Strong Community Is Our Main Goal, But You Have To Take A Baby Walk Before Doing The Marathon.",
                              textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 18
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }

  myAppBar() => 
  AppBar(
    title: Text("Fbct"),
  );

  myDrawer() => 
  Drawer(
    child: ListView(
      children: [

      ],
    ),
  );
}

