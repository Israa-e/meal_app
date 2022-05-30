import 'package:flutter/material.dart';
import 'package:meal_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text('Cooking Up!',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Theme.of(context).primaryColor
            ),),
          ),
          const SizedBox(height: 20,),
          buildListTile("Meal",Icons.restaurant,(){Navigator.of(context).pushReplacementNamed('/');}),
          buildListTile("Filters",Icons.settings,(){Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);}),
        ],
      ),
    );
  }

  ListTile buildListTile(String text,IconData iconData,Function tapHandler) {
    return  ListTile(
          leading: Icon(iconData,size: 26,),
          title: Text(text,style: const TextStyle(
            fontSize: 24 ,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,

          ),
          ),
          onTap: tapHandler,
        );
  }
}
