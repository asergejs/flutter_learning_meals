import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  
  Widget buildLink(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: () {

      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text('Fancy text',
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 30,
                    color: Theme.of(context).primaryColor)),
          ),
          SizedBox(
            height: 20,
          ),
          buildLink('Meals', Icons.restaurant),
          buildLink('Filters', Icons.filter_list)
      
        ],
      ),
    );
  }
}
