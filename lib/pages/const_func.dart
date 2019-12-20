//class Translate{
//  String title;
//  String subTitle;
//  bool isCol;
//
//  Translate(this.title,this.subTitle,this.isCol);
//
//}

class Translate {
  String title;
  String subTitle;
  bool isCol;

  Translate({this.title, this.subTitle, this.isCol});

  factory Translate.fromJson(Map<String, dynamic> jsonData) {
    return Translate(
      title: jsonData['title'],
      subTitle: jsonData['subTitle'],
      isCol: jsonData['isCol'],
    );
  }
}
