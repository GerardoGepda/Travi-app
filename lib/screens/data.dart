import 'package:flutter/material.dart';

class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel
      .setDesc("Encuentra las paradas de autobuses más cercanas a tu zona.");
  sliderModel.setTitle("Localiza");
  sliderModel.setImageAssetPath("assets/images/1.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc(
      "Localiza y conoce el recorrido de la ruta que desees abordar al igual que su tiempo estimado de llegada.");
  sliderModel.setTitle("Encuentra");
  sliderModel.setImageAssetPath("assets/images/2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel
      .setDesc("Acomodate y deja que TRAVI te guie durante tus recorridos.");
  sliderModel.setTitle("Relajate");
  sliderModel.setImageAssetPath("assets/images/3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
