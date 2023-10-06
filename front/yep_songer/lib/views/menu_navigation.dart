import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yep_songer/components/generic/appbars/topappbar.dart';
import 'package:yep_songer/l10n/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:yep_songer/provider/utils_provider.dart';
import 'package:yep_songer/themes/colors/customcolors.dart';
import 'package:yep_songer/views/home.dart';
import 'package:yep_songer/views/menu_drawer.dart';
import 'package:yep_songer/views/Genres/genres.dart';
import 'package:yep_songer/views/reglages/reglages.dart';
import 'package:provider/provider.dart';

class MenuNavigation extends StatefulWidget {
  const MenuNavigation({Key? key, required this.selectedIndexFirst})
      : super(key: key);
  final int selectedIndexFirst;

  @override
  _MenuNavigationState createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation> {
  final Widget _home = const Home();
  final Widget _helpdesk = const Reglages();
  final Widget _genres = const Genres();

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  void _onItemTapped(int index) {
    final providerUtils = Provider.of<UtilsProvider>(context, listen: false);

    if (index == 4) {
      if (_key.currentState!.isDrawerOpen) {
        _key.currentState?.openEndDrawer();
      } else {
        _key.currentState!.openDrawer();
      }
    } else {
      _key.currentState?.openEndDrawer();
      setState(() {
        providerUtils.changeIndex(index);
      });
    }
  }

  Widget? getPageContent() {
    final providerUtils = Provider.of<UtilsProvider>(context, listen: false);

    if (providerUtils.indexNavigation == 0) {
      return _home;
    } else if (providerUtils.indexNavigation == 1) {
      return _genres;
    } else if (providerUtils.indexNavigation == 2) {
      return _helpdesk;
    } else {
      return _home;
    }
  }

  @override
  Widget build(BuildContext context) {
    final providerUtils = Provider.of<UtilsProvider>(context, listen: false);
    return Scaffold(
      body: Scaffold(
        body: getPageContent(),
        appBar: TopAppBar(
          scaffoldKey: _key,
        ),
        key: _key,
        drawer: const MenuDrawer(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Theme.of(context).highlightColor,
        selectedItemColor: Theme.of(context).highlightColor,
        currentIndex: providerUtils.indexNavigation,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/logos/navigation-home.svg',
              color: Theme.of(context).highlightColor,
            ),
            icon: SvgPicture.asset(
              'assets/logos/navigation-home.svg',
            ),
            label: AppLocalizations.of(context)!.home,
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/logos/book.svg',
              color: Theme.of(context).highlightColor,
            ),
            icon: SvgPicture.asset(
              'assets/logos/book.svg',
            ),
            label: AppLocalizations.of(context)!.kind,
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/logos/headset.svg',
              color: Theme.of(context).highlightColor,
            ),
            icon: SvgPicture.asset(
              'assets/logos/headset.svg',
            ),
            label: AppLocalizations.of(context)!.history,
          ),
        ],
      ),
    );
  }
}
