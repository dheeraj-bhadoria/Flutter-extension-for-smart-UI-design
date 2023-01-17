import 'dart:ui';
import 'package:flutter/material.dart';

final defaultTextStyle = TextStyle();

extension TextExtensions on Text {

  Text color(Color color) {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(color: color);
    return Text(this.data ?? "", style: newStyle);
  }

  Text fontSize(double size) {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(fontSize: size);
    return Text(this.data ?? "", style: newStyle);
  }

  Text fontWeight(FontWeight weight) {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(fontWeight: weight);
    return Text(this.data ?? "", style: newStyle);
  }

  Text backgroundColor(Color color) {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(backgroundColor: color);
    return Text(this.data ?? "", style: newStyle);
  }

  Text fontStyle(FontStyle style) {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(fontStyle: style);
    return Text(this.data ?? "", style: newStyle);
  }

  Text fontFamily(String fontfamily) {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(fontFamily: fontfamily);
    return Text(this.data ?? "", style: newStyle);
  }


  Text wordSpacing(double worldspacning) {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(wordSpacing: worldspacning);
    return Text(this.data ?? "", style: newStyle);
  }

  Text decoration(TextDecoration textdecoration) {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(decoration: textdecoration);
    return Text(this.data ?? "", style: newStyle);
  }

  Text h1() {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(fontSize: 24);
    return Text(this.data ?? "", style: newStyle);
  }

  Text h2() {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(fontSize: 22);
    return Text(this.data ?? "", style: newStyle);
  }

  Text h3() {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(fontSize: 20);
    return Text(this.data ?? "", style: newStyle);
  }

  Text h4() {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(fontSize: 18);
    return Text(this.data ?? "", style: newStyle);
  }
  Text h5() {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(fontSize: 16);
    return Text(this.data ?? "", style: newStyle);
  }

  Text h6() {
    var newStyle = this.style ?? defaultTextStyle;
    newStyle = newStyle.copyWith(fontSize: 12);
    return Text(this.data ?? "", style: newStyle);
  }


}