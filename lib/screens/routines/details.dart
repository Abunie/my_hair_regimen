import 'package:flutter/material.dart';
import 'file:///C:/Users/abuni/AndroidStudioProjects/my_hair_regimen/lib/models/routine/routine.dart';
import 'package:myhairregimen/widgets/circle_indicator.dart';
import '../../app_theme.dart';
class DetailsPage extends StatelessWidget {
  final Routine routine;
  DetailsPage({this.routine});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: AppTheme.background,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              title: Text(routine.title),
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: routine.id,
                  child:
                  //Image.asset('assets/media/curlpattern/1.png')
                  FadeInImage(
                    image: AssetImage(
                        routine.imageUrl),
                    fit: BoxFit.cover,
                    placeholder: AssetImage(routine.imageUrl),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          color:AppTheme.background,
          padding: EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Text('Benefits',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Text(
                   routine.benefits,
                ),
                Text('You\'ll need...',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                ItemsWidget(
                  items: routine.items,
                ),
                Text('Steps',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                RoutineSteps(
                  steps: routine.steps,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoutineSteps extends StatelessWidget {
  final List<String> steps;
  RoutineSteps({this.steps});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: steps.length,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: AppTheme.themeColor,
                child: Text('${index + 1}',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(steps[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class ItemsWidget extends StatelessWidget {
  final List<String> items;
  ItemsWidget({this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              backgroundColor: AppTheme.themeColor,
              label: Text(items[index],
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
    );
  }
}
class BenefitsWidget extends StatelessWidget {
  final List<Benefits> benefits;
  BenefitsWidget({this.benefits});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86,
      width: double.infinity,
      child: ListView.builder(
        itemCount: benefits.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return CircleIndicator(percent: benefits[index].percent, benefit: benefits[index],);
        },
      ),
    );
  }
}
