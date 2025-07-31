import 'package:flutter/material.dart';

class TextFiled extends StatelessWidget {
  final String text;

  const TextFiled({Key key,  this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,bottom: 30),
          child: Text(text),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Container(
              height: 70,
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Name\nAddress\nCity,State,Zip',
                  contentPadding: EdgeInsets.all(2),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
