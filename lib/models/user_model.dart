class UserModel {
  late String fname;
  String? lname; // String? != String

  UserModel({
    required this.fname,
    required this.lname,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    fname = json['fname'];
    lname = json['lname'];
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['fname'] = fname;
    _data['lname'] = lname;
    return _data;
  }
}