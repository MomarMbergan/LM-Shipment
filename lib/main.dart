// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

//Note
//<a href="454b25b8a0f379bf509040f4ecb22d54b40591ee"></a>

import 'dart:ui';

import 'package:drop_down/Screens/sceondpage.dart';
import 'package:drop_down/components/images.dart';
import 'package:drop_down/components/navigation_drawer_widget.dart';
import 'package:drop_down/components/search_button.dart';
import 'package:flutter/material.dart';


import 'components/constant.dart';
import 'components/ship_form.dart';
import 'components/submit_button.dart';
import 'components/text_fileds.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String value = "";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Locker Maps',
      debugShowCheckedModeBanner: false,
      home: CustomerForm(),
    );
  }
}
class CustomerForm extends StatefulWidget {
  const CustomerForm({Key key}) : super(key: key);

  @override
  _CustomerFormState createState() => _CustomerFormState();
}

class _CustomerFormState extends State<CustomerForm> {
  bool _checkbox = false;
  bool _checkbox2 = false;
  String selectedCurrency = 'Express Mail 1-2 Days';
  String currentSeclectedValue;
  var selectedvalue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('LockerMaps'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        ),
        drawer: NavigationDrawerWidget(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 4, color: Colors.black),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 120,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Checkbox(
                              value: _checkbox,
                              onChanged: (value) {
                                setState(() {
                                  _checkbox = !_checkbox;
                                });
                              },
                            ),
                          ),
                          Text(
                            'Regular\nBox',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          TextFileds(
                            suffixText: 'Height',
                            text: 'inch',
                          ),
                          TextFileds(text: 'inch', suffixText: 'Lenght'),
                          TextFileds(text: 'inch', suffixText: 'Width'),
                          TextFileds(text: 'oz', suffixText: 'Weight'),
                        ],
                      ),
                    ),
//Note
//<a href="454b25b8a0f379bf509040f4ecb22d54b40591ee"></a>
                    Image.asset(
                      'assets/bar_code.png',
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                //Black Line Container
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Speed',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: DropdownButton<String>(
                            value: selectedCurrency,
                            items: [
                              DropdownMenuItem(
                                value: 'Express Mail 1-2 Days',
                                child: Center(
                                  child: Text('Express Mail 1-2 Days'),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Priority Mail 2-3 Days',
                                child: Center(
                                  child: Text('Priority Mail 2-3 Days'),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Standard Ground 3-7 Days',
                                child: Center(
                                  child: Text('Standard Ground 3-7 Days'),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedCurrency = value;
                              });
                            },
                            hint: Text('Express Mail 1-2 Days'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      carrierBox(),
                      Row(
                        children: [
                          Checkbox(
                            value: _checkbox2,
                            onChanged: (value) {
                              setState(() {
                                _checkbox2 = !_checkbox2;
                              });
                            },
                          ),
                          Text(
                            "Flat Rate Boxes",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                flatRateBoxes(context),
                SizedBox(
                  height: 4,
                ),
                TextFiled(
                  text: 'Shipping From:',
                ),
                TextFiled(
                  text: 'Shipping To :',
                ),
                SubmitButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SceondPage()));
                  },
                  text: 'Submit',
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 4,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                SearchButton(),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Image.asset(
                    'assets/bar.jpg',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: ImagesList(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 4,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//Carrier box is here
  Container carrierBox() {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: selectedvalue,
          isDense: true,
          items: items2.map((String items2) {
            return DropdownMenuItem(
              child: Text(items2),
              value: items2,
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedvalue = value;
            });
          },
          hint: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('Carrier'),
          ),
        ),
      ),
    );
  }

//Flat rates boxes is here
  Container flatRateBoxes(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: DropdownButton<String>(
            value: currentSeclectedValue,
            items: items.map((String items) {
              return DropdownMenuItem(
                child: Text(
                  "$items",
                  style: TextStyle(
                    height: 2,
                    color: Colors.black,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                value: items,
              );
            }).toList(),
            onChanged: (newvalue) {
              print("SELETED ITEM : $newvalue");
              setState(() {
                currentSeclectedValue = newvalue.toString();
              });
            },
            hint: Text('Flat Rate Boxes'),
          ),
        ),
      ),
    );
  }
}
//Note
//<a href="454b25b8a0f379bf509040f4ecb22d54b40591ee"></a>
