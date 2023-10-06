import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yep_songer/components/layout/language_picker.dart';
import 'package:yep_songer/components/layout/menu_drawer/middle_list_drawer.dart';
import 'package:yep_songer/components/layout/menu_drawer/mydivider.dart';
import 'package:yep_songer/themes/dark_theme.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  bool _darkTheme = true;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    _darkTheme = (themeNotifier.getTheme() == darkTheme);

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        backgroundColor: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              const Flexible(flex: 5, child: MiddleListDrawer()),
              myDivider(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text("Mode sombre"),
                      ),
                      Switch(
                          activeColor: Colors.red,
                          value: _darkTheme,
                          onChanged: (val) {
                            setState(() {
                              _darkTheme = val;
                            });
                            onThemeChanged(val, themeNotifier);
                          }),
                    ],
                  )),
                  const LanguagePickerWidget(),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }

  void onThemeChanged(bool value, ThemeNotifier themeNotifier) async {
    (value)
        ? themeNotifier.setTheme(darkTheme)
        : themeNotifier.setTheme(lightTheme);
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode', value);
  }
}
