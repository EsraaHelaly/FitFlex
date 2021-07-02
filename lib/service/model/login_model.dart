class Login_model {
  String msg;
  String token;
  String key;
  Data data;

  Login_model({this.msg, this.token, this.key, this.data});

  Login_model.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    token = json['token'];
    key = json['key'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['token'] = this.token;
    data['key'] = this.key;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  String username;
  String email;
  String gender;
  String levele;

  Data({this.id, this.username, this.email, this.gender, this.levele});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    gender = json['gender'];
    levele = json['levele'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['levele'] = this.levele;
    return data;
  }
}
