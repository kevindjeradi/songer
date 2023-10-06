import 'package:flutter/material.dart';
import 'package:yep_songer/l10n/l10n.dart';
import 'package:yep_songer/provider/locale_provider.dart';
import 'package:provider/provider.dart';

class LanguagePickerWidget extends StatefulWidget {
  const LanguagePickerWidget({Key? key}) : super(key: key);

  @override
  State<LanguagePickerWidget> createState() => _LanguagePickerWidgetState();
}

class _LanguagePickerWidgetState extends State<LanguagePickerWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale ?? const Locale('fr');

    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: locale,
        items: L10n.all.map(
          (locale) {
            final flag = L10n.getFlag(locale.languageCode);
            return DropdownMenuItem(
              child: Center(
                child: Text(flag),
              ),
              value: locale,
              onTap: () {
                final provider =
                    Provider.of<LocaleProvider>(context, listen: false);
                provider.setLocale(locale);
              },
            );
          },
        ).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
