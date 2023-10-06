import 'package:flutter/material.dart';
import 'package:yep_songer/provider/genres_provider.dart';
import 'package:yep_songer/provider/theme_provider.dart';
import 'package:yep_songer/provider/user_provider.dart';
import 'package:yep_songer/provider/utils_provider.dart';
import 'package:yep_songer/route/route.dart' as route;
import 'package:yep_songer/themes/dark_theme.dart';
import 'package:yep_songer/themes/text/themedata.dart';

//Dépendances localization et l10n
import 'package:yep_songer/l10n/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:yep_songer/utils/global_keys.dart';
import 'l10n/l10n.dart';

//Provider
import 'package:yep_songer/provider/locale_provider.dart';
import 'package:provider/provider.dart';

String? checkToken;

Future main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => ThemeNotifier(lightTheme)),
          ChangeNotifierProvider(create: (context) => UserProvider()),
          ChangeNotifierProvider(create: (context) => UtilsProvider()),
          ChangeNotifierProvider(create: (context) => GenreProvider()),
          ChangeNotifierProvider(
              create: (context) => LocaleProvider(),
              builder: (context, child) {
                final provider = Provider.of<LocaleProvider>(context);
                final themeNotifier = Provider.of<ThemeNotifier>(context);

                return MaterialApp(
                  scaffoldMessengerKey: GlobalKeys.scaffoldMessengerKey,
                  navigatorKey: GlobalKeys.navigatorKey,
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  locale: provider.locale,
                  supportedLocales: L10n.all,
                  title: 'songer',
                  theme: themeNotifier.getTheme(),
                  onGenerateRoute: route.controller,
                  initialRoute: route.landingPage,
                );
              }),
        ],
      );
}
