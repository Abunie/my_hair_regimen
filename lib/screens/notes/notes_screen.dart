import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myhairregimen/models/product_list_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:myhairregimen/models/tabIcon_data.dart';
import 'package:myhairregimen/screens/calendar/calendar.dart';
import 'package:myhairregimen/screens/products/products_screen.dart';
import 'package:myhairregimen/screens/profile/profile.dart';
import 'package:myhairregimen/widgets/bottom_bar_view.dart';
import 'package:myhairregimen/widgets/regular_app_bar.dart';


DateTime now = DateTime.now();
String formattedDate = DateFormat('MMMMd').format(now);

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key key, this.animationController}) : super(key: key);
  final AnimationController animationController;

  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen>
    with TickerProviderStateMixin {
  Animation<double> topBarAnimation;
  AnimationController animationController;
  List notes = List();
  String input = "";
  List<ProductListData> productList = ProductListData.productList;
  List<TabIconData> tabIconsList = TabIconData.tabIconsList;
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;


  @override
  void initState() {
//    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//        CurvedAnimation(
//            parent: widget.animationController,
//            curve: Interval(0, 0.5, curve: Curves.fastOutSlowIn)));


    scrollController.addListener(() {
      if (scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          setState(() {
            topBarOpacity = 1.0;
          });
        }
      } else if (scrollController.offset <= 24 &&
          scrollController.offset >= 0) {
        if (topBarOpacity != scrollController.offset / 24) {
          setState(() {
            topBarOpacity = scrollController.offset / 24;
          });
        }
      } else if (scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          setState(() {
            topBarOpacity = 0.0;
          });
        }
      }
    });

    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
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
      color: AppTheme.background,
      child: Scaffold(
        appBar: RegularAppBar("Notes"),
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  Scaffold(
                    floatingActionButton:Padding(
                      padding: const EdgeInsets.only(bottom: 100.0),
                      child:
                      FloatingActionButton(
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  title: Text("Add Note"),
                                  content: TextField(
                                    onChanged: (String value){
                                      input = value;
                                    },
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text("Add"),
                                      color: AppTheme.themeColor,
                                      onPressed: (){
                                        setState(() {
                                          notes.add(input);
                                        });
                                        Navigator.of(context).pop();

                                      },)

                                  ],


                                );
                              }
                          );
                        },
                        backgroundColor: AppTheme.themeColor,
                        child:Icon(
                          Icons.add,
                          color:  Colors.white,
                        ) ,
                      ),
                    ),
                    body: StaggeredGridView.countBuilder(
                      crossAxisCount: 4,
                      itemCount: notes.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index){
                        return Card(
                          color: AppTheme.background,
                          elevation: 4,
                          margin:EdgeInsets.all(8),
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)) ,
                          child: ListTile(
                            title: Text(notes[index]),
                            trailing: IconButton(icon: Icon(Icons.delete),
                              color: Colors.redAccent,
                              onPressed: (){
                                setState(() {
                                  notes.removeAt(index);
                                });
                              },),
                          ),
                        );
                      },
                      staggeredTileBuilder: (int index) =>
                      new StaggeredTile.count(2, index.isEven ? 2 : 1),
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                    ),
                  ),
                  bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
//    return Scaffold(
//      appBar: RegularAppBar("Notes"),
//    body: Scaffold(
//      floatingActionButton:Padding(
//        padding: const EdgeInsets.only(bottom: 100.0),
//        child:
//        FloatingActionButton(
//          onPressed: (){
//            showDialog(
//                context: context,
//                builder: (BuildContext context){
//                  return AlertDialog(
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(8)
//                    ),
//                    title: Text("Add Note"),
//                    content: TextField(
//                      onChanged: (String value){
//                        input = value;
//                      },
//                    ),
//                    actions: <Widget>[
//                      FlatButton(
//                        child: Text("Add"),
//                        color: AppTheme.themeColor,
//                        onPressed: (){
//                          setState(() {
//                            notes.add(input);
//                          });
//                          Navigator.of(context).pop();
//
//                        },)
//
//                    ],
//
//
//                  );
//                }
//            );
//          },
//          backgroundColor: AppTheme.themeColor,
//          child:Icon(
//            Icons.add,
//            color:  Colors.white,
//          ) ,
//        ),
//      ),
//      body: StaggeredGridView.countBuilder(
//        crossAxisCount: 4,
//        itemCount: notes.length,
//        shrinkWrap: true,
//        itemBuilder: (BuildContext context, int index){
//          return Card(
//            color: AppTheme.background,
//            elevation: 4,
//            margin:EdgeInsets.all(8),
//            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)) ,
//            child: ListTile(
//              title: Text(notes[index]),
//              trailing: IconButton(icon: Icon(Icons.delete),
//                color: Colors.redAccent,
//                onPressed: (){
//                  setState(() {
//                    notes.removeAt(index);
//                  });
//                },),
//            ),
//          );
//        },
//        staggeredTileBuilder: (int index) =>
//        new StaggeredTile.count(2, index.isEven ? 2 : 1),
//        mainAxisSpacing: 4.0,
//        crossAxisSpacing: 4.0,
//      ),
//    ));
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCalendar()),
                );
//                setState(() {
//                  tabBody =
//                      MyCalendar(animationController: animationController);
//                });
              });
            } else if (index == 1 ) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductsScreen()),
                );
//                setState(() {
//                  tabBody =
//                      ProductsScreen(animationController: animationController);
//                });
              });
            }else if (index == 2 ) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
//                setState(() {
//                  tabBody =
//                      Profile();
//                });
              });
            } else if (index == 3) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotesScreen()),
                );
//                setState(() {
//                  tabBody =
//                      NotesScreen(animationController: animationController);
//                });
              });
            }
          },
        ),
      ],
    );
  }
}




