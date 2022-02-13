import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? myDrawer() : null,
        appBar: sizingInformation.isMobile ? myAppBar() : null,
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
                      Image.asset(
                        'assets/images/splash.png',
                        width: 70,
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: () {}, child: Text("Home")),
                          TextButton(
                              onPressed: () {}, child: Text("Big Buy Contest"))
                        ],
                      ))
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
                            child: Image.asset(
                              'assets/images/bg_2.png',
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
                              Text(
                                "BUILT ON BINANCE SMART CHAIN",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                "Hyper-Deflationary Tokens",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 62),
                              ),
                              Text(
                                "We Wealthy Beyond Your Limit Is Our Motto. But Good Thing Takes Time, Only Those With High Determination Will Stay. Creating Transparent And Strong Community Is Our Main Goal, But You Have To Take A Baby Walk Before Doing The Marathon.",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/fbct_2.png',
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            "About us",
                            style: TextStyle(fontSize: 42),
                          ),
                          Text(
                            "We started small as a group chat and came up with the ideas of creating profitable and rewarding tokens build on binance smart chain. After that, the FBCT was born. We developed this token seriously, we’ve planned the project since February 2022 and Launched it on February 2022. With high determination, trying to create a usaeful tokens for everyone in crypto world. We committed to make FBCT the best tokens in 2022. Looking back from successful and failed tokens, we gain experienced for FBCT. With transparent and Solid team we will make FBCT best tokens on the BSC Network and to be listed on major Exchange.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          "Why hold FBCT?",
                          style: TextStyle(fontSize: 42),
                        ),
                        Text(
                            '''You will know a gem when you see it. We know our value, we will make sure you receive a higher proportion of Rewards trough individual Holdings.
2% burn fee is collected from every transactions. We distributed by removing tokens from circulating supply to burn address. In addition, the holders will get the higher share of rewards.
FBCT will Launch the series of utilities including staking pools, FBCT NFT, NFT Marketplace, decentralized Exchange and lottery. Those features will push you beyond your limit in most fun and exciting way.
FBCT is a sustainable tokens with long-term project and running road map. We guarantee our top holders with good rewards. Over upcoming months, we will generate all the revenue independently and permanently. It will not go to the team but it will be used for further buyback and burn. By removing more tokens from circulating supply, the holder will feel secure with positive price action.''',
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 18
  ),
)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  myAppBar() => AppBar(
        title: Text("Fbct"),
      );

  myDrawer() => Drawer(
        child: ListView(
          children: [],
        ),
      );
}
