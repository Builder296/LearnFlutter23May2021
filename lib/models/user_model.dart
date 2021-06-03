class UserModel {
  late int id;
  late String name;
  late String username;
  late String email;
  late Address address;
  late String phone;
  late String website;
  late Company company;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address = Address.fromJson(json['address']);
    phone = json['phone'];
    website = json['website'];
    company = Company.fromJson(json['company']);
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['username'] = username;
    _data['email'] = email;
    _data['address'] = address.toJson();
    _data['phone'] = phone;
    _data['website'] = website;
    _data['company'] = company.toJson();
    return _data;
  }
}


class Address {
  late String street;
  late String suite;
  late String city;
  late String zipcode;
  late Geo geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
    geo = Geo.fromJson(json['geo']);
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['street'] = street;
    _data['suite'] = suite;
    _data['city'] = city;
    _data['zipcode'] = zipcode;
    _data['geo'] = geo.toJson();
    return _data;
  }
}

class Geo {
  late String lat;
  late String lng;

  Geo({
    required this.lat,
    required this.lng,
  });

  Geo.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['lat'] = lat;
    _data['lng'] = lng;
    return _data;
  }
}

class Company {
  late String name;
  late String catchPhrase;
  late String bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  Company.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    catchPhrase = json['catchPhrase'];
    bs = json['bs'];
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['catch_phrase'] = catchPhrase;
    _data['bs'] = bs;
    return _data;
  }
}
