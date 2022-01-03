class FloorPlanModel {
  String title, path;

  FloorPlanModel({this.title, this.path});

  factory FloorPlanModel.fromJson(Map<String, dynamic> json) {
    return FloorPlanModel(
      title: json['title'] == null ? '' : json['title'],
      path: json['path'] == null
          ? 'https://english.cdn.zeenews.com/sites/default/files/styles/zm_700x400/public/2020/12/25/907391-housing-pixabat.jpg'
          : json['path'],
    );
  }
}
