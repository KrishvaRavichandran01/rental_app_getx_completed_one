
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs; // Observable variable

  void increment() {
    if(count<5){
      count.value++;
    }}

}