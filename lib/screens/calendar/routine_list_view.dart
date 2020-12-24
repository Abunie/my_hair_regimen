import 'package:myhairregimen/app_theme.dart';
import 'file:///C:/Users/abuni/AndroidStudioProjects/my_hair_regimen/lib/models/routine/routine_data.dart';
import 'file:///C:/Users/abuni/AndroidStudioProjects/my_hair_regimen/lib/models/routine/routine_list_data.dart';
import 'package:myhairregimen/main.dart';
import 'package:flutter/material.dart';
import 'package:myhairregimen/screens/routines/details.dart';
import '../../main.dart';

class RoutineListView extends StatefulWidget {
  const RoutineListView(
      {Key key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController mainScreenAnimationController;
  final Animation<dynamic> mainScreenAnimation;

  @override
  _RoutineListViewState createState() => _RoutineListViewState();
}

class _RoutineListViewState extends State<RoutineListView>
    with TickerProviderStateMixin {
  AnimationController animationController;
  List<RoutineListData> routineListData = RoutineListData.routineList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      child: ListView.builder(
        itemCount: routineListData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final int count =
          routineListData.length > 10 ? 10 : routineListData.length;
          final Animation<double> animation =
          Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                  parent: animationController,
                  curve: Interval((1 / count) * index, 1.0,
                      curve: Curves.fastOutSlowIn)));
          animationController.forward();

          return RoutineView(
            routineListData: routineListData[index],
            animation: animation,
            animationController: animationController,
          );
        },
      ),
    );
  }
}

class RoutineView extends StatelessWidget {
  const RoutineView(
      {Key key, this.routineListData, this.animationController, this.animation})
      : super(key: key);

  final RoutineListData routineListData;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
                100 * (1.0 - animation.value), 0.0, 0.0),
            child: InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        routine: Data.routines[routineListData.index],
                      )));
            },
            child: SizedBox(
              width: 130,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40, left: 8, right: 8, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: HexColor(routineListData.endColor)
                                  .withOpacity(0.6),
                              offset: const Offset(1.1, 4.0),
                              blurRadius: 8.0),
                        ],
                        gradient: LinearGradient(
                          colors: <HexColor>[
                            HexColor(routineListData.startColor),
                            HexColor(routineListData.endColor),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(54.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 8, right: 8, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              routineListData.titleTxt,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: AppTheme.fontName,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                color: AppTheme.white,
                              ),
                            ),
                            Divider(
                                color: Colors.white
                            ),
                          ],
                        ),
                      ),

                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 84,
                      height: 84,
                      decoration: BoxDecoration(
                        color: AppTheme.nearlyWhite.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 8,
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset(routineListData.imagePath),
                    ),
                  ),

                  Positioned(
                    bottom: 10,
                    left: 15,
                    child: Row(
                      children: <Widget>[
                        Text("3:15 PM",
                          style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                        ),
                        IconButton(
                          icon: Icon(Icons.check_circle_outline),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
            ),
          ),
        );
      },
    );
  }
}
