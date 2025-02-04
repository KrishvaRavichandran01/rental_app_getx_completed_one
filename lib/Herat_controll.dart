import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Heartcolor extends GetxController{
  var isHeartRed=false.obs;
  void heart(){
    isHeartRed.value=!isHeartRed.value;

  }}
