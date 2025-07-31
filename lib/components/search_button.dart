import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 4),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Tracking & Locker Search",
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ),
      ),
    );
  }
}
