class Benefits {
  String name;
  String benefits;
  String weight;
  double percent;
  //Benefits({this.name, this.weight, this.percent});
}

class Routine{
  String id,imageUrl,title, benefits;
  List<String> steps;
  List<String> items;
  //List<Benefits> benefits;
  Routine({this.id,this.title,this.imageUrl,this.steps,this.items,this.benefits});
}