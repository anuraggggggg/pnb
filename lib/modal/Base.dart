import 'package:flutter/cupertino.dart';

class Base {
  String ? Title;
  String ? Image;

  Base({ required this.Image
    , required this.Title});
}

class BaseBene {
  String ? Name;
  String ? Initial;
  BaseBene({
    this.Initial,
    this.Name,
  });
}



class BaseModel {

  String ? Name;
  String ? Address;

  BaseModel({ this.Name , this.Address});
}

