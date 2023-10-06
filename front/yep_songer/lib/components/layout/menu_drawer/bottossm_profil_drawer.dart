import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yep_songer/api/api_auth.dart' as auth;
import 'package:yep_songer/route/route.dart' as route;

class BottomProfilDrawer extends StatefulWidget {
  const BottomProfilDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomProfilDrawer> createState() => _BottomProfilDrawerState();
}

class _BottomProfilDrawerState extends State<BottomProfilDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(100)),
            height: 200,
            width: 200,
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/logos/logo.jpg"),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          // Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       SizedBox(
          //           child: Text(
          //         "name",
          //         overflow: TextOverflow.ellipsis,
          //         style: Theme.of(context).textTheme.headline4,
          //       )),
          //       const SizedBox(
          //         child: Text(
          //           "Titre",
          //           overflow: TextOverflow.fade,
          //         ),
          //       )
          //     ]),
          IconButton(
            padding: const EdgeInsets.all(0.0),
            constraints: const BoxConstraints(),
            onPressed: () {
              auth.Api.logout().then((value) {
                if (value) {
                  Navigator.pushNamed(context, route.landingPage);
                }
              });
            },
            icon: SvgPicture.asset(
              'assets/logos/log-out.svg',
              width: 22,
            ),
          )
        ],
      ),
    );
  }
}
