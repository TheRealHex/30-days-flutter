import 'package:flutter/material.dart';

final _textController = TextEditingController();
final List<String> todoList = [];
final List<String> checkedList = [];
late String inputValue;

var myAppBar = AppBar(
  title: const Text('Todo App'),
  centerTitle: true,
  titleTextStyle: const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
);
