import 'package:flutter/material.dart';


class Task{ 
final String taskTitle;
bool taskChek;
Task({required this.taskTitle,this.taskChek=false});


void ChangeBox(){
  taskChek=!taskChek;
}

}