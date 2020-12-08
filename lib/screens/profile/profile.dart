import 'package:myhairregimen/widgets/hair_profile_card.dart';
import 'package:myhairregimen/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:myhairregimen/widgets/regular_app_bar.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: RegularAppBar("Hair Profile"),
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Header(
              height: 80,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: AppTheme.themeColor,
                            radius: 35.0,
                            backgroundImage: AssetImage(
                              'assets/media/sample_profile/profile.png',
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Abunie Gaiya',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    color: AppTheme.themeColor,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: PreferredSize (
                      preferredSize: Size.fromHeight(50.0),
                      child: AppBar(
                        backgroundColor: AppTheme.themeColor,
                        elevation: 0,
                        bottom: TabBar(
                          labelColor: AppTheme.themeColor,
                          unselectedLabelColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              color: Colors.white),
                          tabs: [
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Hair Profile"),
                              ),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Favourite Products"),
                              ),
                            ),
                          ],
                          isScrollable: true,
                        ),
                      ),

                    ),
                    body: TabBarView(children: [
                      Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[
                                HairProfileCard(
                                  gradientBegin: AppTheme.light_Ginger,
                                  gradientEnd: AppTheme.dark_Ginger,
                                  title: 'Hair Porosity',
                                  subtitle: 'Low/Medium porosity',
                                  iconPath: 'assets/media/hair_icons/porosity.png',
                                ),
                                SizedBox(width: 20.0),
                                HairProfileCard(
                                  gradientBegin: AppTheme.light_Grey,
                                  gradientEnd: AppTheme.dark_Grey,
                                  title: 'Hair Texture',
                                  subtitle: 'Fine Hair',
                                  iconPath: 'assets/media/hair_icons/fineness.png',
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                HairProfileCard(
                                  gradientBegin: AppTheme.light_Pink,
                                  gradientEnd: AppTheme.dark_Pink,
                                  title: 'Hair Density',
                                  subtitle: 'Medium Density',
                                  iconPath: 'assets/media/hair_icons/density.png',
                                ),
                                SizedBox(width: 20.0),
                                HairProfileCard(
                                  gradientBegin: AppTheme.light_Yellow,
                                  gradientEnd: AppTheme.dark_Yellow,
                                  title: 'Curl Pattern',
                                  subtitle: '4a/4b',
                                  iconPath: 'assets/media/hair_icons/curl_pattern.png',
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                HairProfileCard(
                                  gradientBegin: AppTheme.light_Purple,
                                  gradientEnd: AppTheme.dark_Purple,
                                  title: 'Hair Length',
                                  subtitle: '16 inches',
                                  iconPath: 'assets/media/hair_icons/length.png',

                                ),
                                SizedBox(width: 20.0),
                                HairProfileCard(
                                  gradientBegin: AppTheme.light_Navy,
                                  gradientEnd: AppTheme.dark_Navy,
                                  title: 'Hair Goals',
                                  subtitle: 'Length, Defination',
                                  iconPath: 'assets/media/hair_icons/hair_goal.png',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Text("You currently do not have any favourite products"),
                    ]),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }

}

