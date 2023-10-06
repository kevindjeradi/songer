import 'package:flutter/material.dart';
import 'package:yep_songer/components/layout/swipe_cards/background_curve_widget.dart';
import 'package:yep_songer/components/layout/swipe_cards/cards_stack_widget.dart';

enum Swipe { left, right, none }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: const [
          BackgroudCurveWidget(),
          CardsStackWidget(),
        ],
      ),
    );

    // return Scaffold(
    //   backgroundColor: CustomColors.greyLighten3,
    //   body: SafeArea(
    //     child: SingleChildScrollView(
    //       physics: const BouncingScrollPhysics(),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(AppLocalizations.of(context)!.home_title + " Prénom ",
    //                     style: Theme.of(context).textTheme.headline3),
    //                 Text(AppLocalizations.of(context)!.home_title2,
    //                     style: Theme.of(context).textTheme.headline1),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
    //             child: Container(
    //                 color: CustomColors.greyLighten4,
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(20),
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       AutoSizeText(
    //                           AppLocalizations.of(context)!.home_card1_title,
    //                           maxLines: 1,
    //                           style: Theme.of(context).textTheme.headline4),
    //                       Padding(
    //                         padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    //                         child: Text(
    //                             AppLocalizations.of(context)!
    //                                 .home_card1_subtitle,
    //                             style: const TextStyle(
    //                                 fontWeight: FontWeight.bold)),
    //                       ),
    //                       Text(
    //                           AppLocalizations.of(context)!.home_card1_content),
    //                     ],
    //                   ),
    //                 )),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(bottom: 20),
    //             child: Container(
    //               color: Colors.white,
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.end,
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.only(left: 20),
    //                     child: SizedBox(
    //                       width: mWidth * 0.50,
    //                       child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.only(top: 20),
    //                             child: AutoSizeText(
    //                                 AppLocalizations.of(context)!
    //                                     .home_card2_title,
    //                                 maxLines: 1,
    //                                 style:
    //                                     Theme.of(context).textTheme.headline1),
    //                           ),
    //                           Padding(
    //                             padding:
    //                                 const EdgeInsets.fromLTRB(0, 20, 0, 20),
    //                             child: AutoSizeText(
    //                                 AppLocalizations.of(context)!
    //                                     .home_card2_subtitle1,
    //                                 maxLines: 1,
    //                                 style:
    //                                     Theme.of(context).textTheme.headline4),
    //                           ),
    //                           SizedBox(
    //                             width: mWidth * 0.55,
    //                             child: Row(
    //                               mainAxisAlignment:
    //                                   MainAxisAlignment.spaceBetween,
    //                               children: [
    //                                 Expanded(
    //                                   child: Column(
    //                                     crossAxisAlignment:
    //                                         CrossAxisAlignment.start,
    //                                     children: [
    //                                       const AutoSizeText(
    //                                           "Nantes, Lavoisier",
    //                                           maxLines: 1,
    //                                           style: TextStyle(
    //                                               fontWeight: FontWeight.bold)),
    //                                       Padding(
    //                                         padding: const EdgeInsets.fromLTRB(
    //                                             0, 5, 0, 20),
    //                                         child: Text(
    //                                             AppLocalizations.of(context)!
    //                                                 .home_card2_content1),
    //                                       ),
    //                                     ],
    //                                   ),
    //                                 ),
    //                                 const SizedBox(
    //                                   width: 50,
    //                                 ),
    //                                 Container(
    //                                     width: 50,
    //                                     height: 50,
    //                                     decoration: BoxDecoration(
    //                                         color: Colors.white,
    //                                         border: Border.all(
    //                                           color: Colors.white,
    //                                         ),
    //                                         boxShadow: const [
    //                                           BoxShadow(
    //                                             color:
    //                                                 Color.fromARGB(22, 0, 0, 0),
    //                                             blurRadius: 6.0,
    //                                             spreadRadius: 5.0,
    //                                             offset: Offset(2.0, 2.0),
    //                                           )
    //                                         ],
    //                                         borderRadius:
    //                                             const BorderRadius.all(
    //                                                 Radius.circular(50))),
    //                                     child: Center(
    //                                       child: SvgPicture.asset(
    //                                         'assets/logos/location.svg',
    //                                       ),
    //                                     ))
    //                               ],
    //                             ),
    //                           ),
    //                           Text(
    //                               AppLocalizations.of(context)!
    //                                   .home_card2_subtitle2,
    //                               style: Theme.of(context).textTheme.headline4),
    //                           Padding(
    //                             padding:
    //                                 const EdgeInsets.fromLTRB(0, 10, 0, 20),
    //                             child: AutoSizeText(
    //                               AppLocalizations.of(context)!
    //                                   .home_card2_content2,
    //                               maxLines: 6,
    //                             ),
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.only(bottom: 20),
    //                             child: Row(
    //                               children: [
    //                                 InkWell(
    //                                   onTap: (() async {
    //                                     launchUrlString("tel:+33170230301");
    //                                   }),
    //                                   child: SvgPicture.asset(
    //                                     'assets/logos/call.svg',
    //                                   ),
    //                                 ),
    //                                 const SizedBox(
    //                                   width: 30,
    //                                 ),
    //                                 InkWell(
    //                                   onTap: (() async {
    //                                     // await FlutterPhoneDirectCaller
    //                                     //     .callNumber("+33770183792");
    //                                   }),
    //                                   child: const Text('01 70 23 03 01',
    //                                       style: TextStyle(
    //                                           fontWeight: FontWeight.bold)),
    //                                 )
    //                               ],
    //                             ),
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     width: 10,
    //                   ),
    //                   SvgPicture.asset(
    //                     'assets/logos/home-perso-infos.svg',
    //                     width: mWidth * 0.4,
    //                     height: mHeight * 0.35,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
