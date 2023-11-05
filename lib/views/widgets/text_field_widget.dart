import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const TextFieldWidget({
    super.key,
    required TextEditingController controllerFirstNum, required this.text1, required this.text2,
  }) : _controllerFirstNum = controllerFirstNum;

  final TextEditingController _controllerFirstNum;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controllerFirstNum,
      decoration: InputDecoration(
          labelText: text1, hintText: text2),
      style: const TextStyle(fontSize: 20),
      keyboardType: TextInputType.number,
    );
  }
}
