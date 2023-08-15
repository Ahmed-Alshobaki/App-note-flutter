class notes1 {
  int? id;
  String? title;
  String? body;
  int? iduser;

  notes1({this.id, this.title, this.body, this.iduser});

  notes1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    iduser = json['iduser'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['title'] = this.title;
  //   data['body'] = this.body;
  //   data['iduser'] = this.iduser;
  //   return data;
  // }
}