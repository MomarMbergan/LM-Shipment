import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);


  @override
  Widget build(BuildContext context) {
    final name = 'Locker Maps';
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: padding,
          children: [
             buildHeader(
              name: name,
            ),
            const SizedBox(height: 20,),
            buildMenuItem(
              text: "Logistics Map",
              icon: Icons.map,
            ),
            const SizedBox(height: 48,),
            buildMenuItem(
              text: "Trucking",
              icon: Icons.local_shipping_outlined,
            ),
            const SizedBox(height: 48,),
            buildMenuItem(
              text: "Ocean Freight",
              icon: Icons.directions_boat_rounded,
            ),
            const SizedBox(height: 48,),
            buildMenuItem(
              text: "Air Cargo",
              icon: Icons.local_airport_sharp,
            ),
            const SizedBox(height: 24,),
            Divider(
              color: Colors.white70,
            ),
            const SizedBox(height: 24,),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: "About Us",
              icon: Icons.people_outline_outlined,
            ),
          ],
        ),
      ),
    );
  }

 Widget buildMenuItem({
 @required String text,
   @required IconData icon,
}) {
   final color = Colors.white;
   final hoverColor = Colors.white70;
   return ListTile(
     leading: Icon(icon,color: color,),
     title: Text(text,style: TextStyle(color: color),),
     hoverColor: hoverColor,
     onTap: (){},
   );
  }

  Widget buildHeader({
    String name,
  }) => InkWell(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/locker.png'),),
          SizedBox(width: 20,),
          Column(
            children: [
              Text(name,style: TextStyle(fontSize: 20,color: Colors.white),),
            ],
          )
        ],
      ),
    ),
  );
}
