class RoutineListData {
  RoutineListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  String description;

  static List<RoutineListData> routineList = <RoutineListData>[
    RoutineListData(
      imagePath: 'assets/media/routine_images/clarify.png',
      titleTxt: 'Clarify/Shampoo',
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/detangle.png',
      titleTxt: 'Detangle your hair',
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/scalp_massage.png',
      titleTxt: 'Scalp Massage',
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/supplements.png',
      titleTxt: 'Hair Supplements',
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/deep_cond.png',
      titleTxt: 'Deep Condition',
      startColor: '#FFD966',
      endColor: '#FFC61A',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/water.png',
      titleTxt: 'Drink   Water',
      startColor: '#FFAD33',
      endColor: '#FF9900',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/trim.png',
      titleTxt: 'Trim Dead Ends',
      startColor: '#00CC44',
      endColor: '#009933',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/cowash.png',
      titleTxt: 'Cowash Your Hair',
      startColor: '#FF8080',
      endColor: '#FF4D4D',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/heat.png',
      titleTxt: ' Use of Heat',
      startColor: '#FF794D',
      endColor: '#FF531A',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/shortterm.png',
      titleTxt: 'Short-Term Style',
      startColor: '#D6DBDF',
      endColor: '#34495E',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/longterm.png',
      titleTxt: 'Long-Term Style',
      startColor: '#FF8C1A',
      endColor: '#CC6600',
    ),
    RoutineListData(
      imagePath: 'assets/media/routine_images/treatment.png',
      titleTxt: 'Special Treatment',
      startColor: '#004D99',
      endColor: '#00264D',
    ),
  ];
}
