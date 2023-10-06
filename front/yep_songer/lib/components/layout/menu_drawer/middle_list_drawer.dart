import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yep_songer/api/api_auth.dart' as auth;
import 'package:yep_songer/components/layout/menu_drawer/number_widget.dart';
import 'package:yep_songer/provider/user_provider.dart';
import 'package:yep_songer/route/route.dart' as route;

class MiddleListDrawer extends StatefulWidget {
  const MiddleListDrawer({Key? key}) : super(key: key);

  @override
  State<MiddleListDrawer> createState() => _MiddleListDrawerState();
}

class _MiddleListDrawerState extends State<MiddleListDrawer> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context, listen: true);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(100),
                  elevation: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(224, 224, 224, 1),
                        borderRadius: BorderRadius.circular(100)),
                    height: 200,
                    width: 200,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/avatar.png"),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text(
                            user.name,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).highlightColor),
                            textAlign: TextAlign.center,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          "Padawan",
                          overflow: TextOverflow.fade,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Theme.of(context).highlightColor),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
              ],
            ),
          ],
        ),
        const NumbersWidget(),
        IconButton(
            onPressed: () {
              auth.Api.logout().then((value) {
                if (value) {
                  Navigator.pushNamed(context, route.landingPage);
                }
              });
            },
            icon: const Icon(Icons.logout))
      ],
    );
  }
}
