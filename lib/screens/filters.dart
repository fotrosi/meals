import 'package:flutter/material.dart';
// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';

class FilterSettings {
  bool glutenFree = false;
  bool lactoseFree = false;
  bool vegetarian = false;
  bool vegan = false;

  // FilterSettings({
  //   required this.glutenFree,
  //   required this.lactoseFree,
  //   required this.vegetarian,
  //   required this.vegan,
  // });
}

class FilterScreen extends StatefulWidget {
  const FilterScreen({
    super.key,
    required this.currentSettings,
  });

  final FilterSettings currentSettings;

  @override
  State<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  // var _glutenFreeFilterSet = false;
  // var _lactoseFreeFilterSet = false;
  // var _vegetarianFilterSet = false;
  // var _veganFilterSet = false;
  var _settings = FilterSettings();

  // void _setScreen(String identifier) {
  //   Navigator.of(context).pop();
  //   if (identifier == 'meals') {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (ctx) => const TabsScreen()),
  //     );
  //   }
  // }

  @override
  void initState() {
    super.initState();

    _settings = widget.currentSettings;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: _setScreen),
      body: PopScope(
        canPop: false, // Prevents automatic pop
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop) {
            Navigator.of(context).pop(_settings);
          }
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _settings.glutenFree,
              onChanged: (isChecked) {
                setState(() {
                  _settings.glutenFree = isChecked;
                });
              },
              title: Text(
                'Gluten-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              subtitle: Text(
                'Only include gluten-free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _settings.lactoseFree,
              onChanged: (isChecked) {
                setState(() {
                  _settings.lactoseFree = isChecked;
                });
              },
              title: Text(
                'Lactose-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              subtitle: Text(
                'Only include lactose-free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _settings.vegetarian,
              onChanged: (isChecked) {
                setState(() {
                  _settings.vegetarian = isChecked;
                });
              },
              title: Text(
                'Vegetarian',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              subtitle: Text(
                'Only include vegetarian meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _settings.vegan,
              onChanged: (isChecked) {
                setState(() {
                  _settings.vegan = isChecked;
                });
              },
              title: Text(
                'Vegan',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              subtitle: Text(
                'Only include vegan meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
          ],
        ),
      ),
    );
  }
}
