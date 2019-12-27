import 'dart:convert';

import 'package:flutter/material.dart';

class ImageModel {
  int id;
  String title, url;

  ImageModel(this.id, this.title, this.url);
  ImageModel.fromJson(inJson){
    id = inJson['id'];
    title = inJson['title'];
    url = inJson['url'];
  }
}