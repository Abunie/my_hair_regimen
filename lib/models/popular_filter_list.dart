class PopularFilterListData {
  PopularFilterListData({
    this.titleTxt = '',
    this.isSelected = false,
  });

  String titleTxt;
  bool isSelected;

  static List<PopularFilterListData> productList = <PopularFilterListData>[
    PopularFilterListData(
      titleTxt: 'Conditioner',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Hair Mouse',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Gel',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Shampoo',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Oil',
      isSelected: false,
    ),
  ];

  static List<PopularFilterListData> hairCategory = <PopularFilterListData>[
    PopularFilterListData(
      titleTxt: 'Low Porosity',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Type 3',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Type 4',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'High Porosity',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Medium Porosity',
      isSelected: false,
    ),
  ];
}
