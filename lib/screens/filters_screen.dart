import 'package:flutter/material.dart';
import 'package:meals/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegenatian = false;
  bool _vegan = false;
  bool _lactose = false;

  Widget _buildSwitchListTile(String titleText, String descriptionText,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
        title: Text(titleText),
        value: currentValue,
        subtitle: Text(descriptionText),
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile('Gluten-free',
                    'Only include gluten-free meals.', _glutenFree, (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                _buildSwitchListTile(
                    'Vegetarian', 'Only include vegetarian meals.', _vegenatian,
                    (newValue) {
                  setState(() {
                    _vegenatian = newValue;
                  });
                }),
                _buildSwitchListTile('Lactose-free',
                    'Only include lactose-free meals.', _lactose, (newValue) {
                  setState(() {
                    _lactose = newValue;
                  });
                }),
                _buildSwitchListTile(
                    'Vegan-free', 'Only include vegan-free meals.', _vegan,
                    (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
