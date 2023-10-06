import 'package:flutter/material.dart';
import 'package:yep_songer/provider/utils_provider.dart';
import 'package:yep_songer/themes/colors/customcolors.dart';
import 'package:yep_songer/views/menu_navigation.dart';
import 'package:provider/provider.dart';

class TopAppBar extends StatefulWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  /// ## Parameters:
  ///
  /// **scaffoldKey :** [GlobalKey<ScaffoldState>]. The global key necessary to link the app bar and the scaffold's drawer. **Is required.**
  const TopAppBar({Key? key, required this.scaffoldKey})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _TopAppBarState createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  @override
  Widget build(BuildContext context) {
    final providerUtils = Provider.of<UtilsProvider>(context, listen: false);

    return AppBar(
      leadingWidth: 48,
      leading: SizedBox(
        height: 5,
        child: Padding(
            padding: const EdgeInsets.only(left: 17),
            child: GestureDetector(
              onTap: (() {
                widget.scaffoldKey.currentState?.openDrawer();
              }),
              child: CircleAvatar(
                radius: 2.0,
                backgroundColor: Theme.of(context).bottomAppBarColor,
                child: const Center(
                    child: Text(
                  "KD",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
              ),
            )),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      elevation: 0,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.8),
          child: Container(
            color: CustomColors.greyDarken2,
            height: 0.8,
          )),
      title: GestureDetector(
        onTap: () {
          providerUtils.changeIndex(0);
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const MenuNavigation(selectedIndexFirst: 0),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );
        },
        child:
            const Image(image: AssetImage("assets/logos/logo.jpg"), width: 95),
      ),
      centerTitle: true,
    );
  }
}
