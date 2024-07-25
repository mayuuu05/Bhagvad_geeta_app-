
import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import '../../../utils/globals/global.dart';
import '../../provider/gita_shloks_provider.dart';
import '../../provider/language_provider.dart';
import '../../provider/theme_provider.dart';

class ShlockPage extends StatelessWidget {
  const ShlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    GitaProvider gitaProvider =
        Provider.of<GitaProvider>(context, listen: true);

    LanguageProvider languageProviderTrue =
        Provider.of<LanguageProvider>(context, listen: true);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    ThemeProvider themeProviderTrue =
        Provider.of<ThemeProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: (themeProviderTrue.isDark)
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.primary,
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(),
                height: height * 0.2 + 40,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage((chapterImages[selectedIndex])),
                      fit: BoxFit.cover,
                      opacity: 0.4),
                  // borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                alignment: Alignment.center,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        PopupMenuButton<String>(
                          color: (themeProviderTrue.isDark)
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.secondary,
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                          onSelected: (String result) {
                            switch (result) {
                              case 'Languages':
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      shadowColor: Colors.white,
                                      title: Icon(Icons.language, size: 40),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          const Text(
                                            'Choose your preferred language\n(Don\'t worry, you can change it later.)',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          ListTile(
                                            title: const Text('Sanskrit'),
                                            leading: Radio<String>(
                                              activeColor:
                                                  (themeProviderTrue.isDark)
                                                      ? Theme.of(context)
                                                          .colorScheme
                                                          .primary
                                                      : Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary,
                                              value: 'Sanskrit',
                                              groupValue:
                                                  Provider.of<LanguageProvider>(
                                                          context,
                                                          listen: true)
                                                      .selectedLanguage,
                                              onChanged: (String? value) {
                                                Provider.of<LanguageProvider>(
                                                        context,
                                                        listen: false)
                                                    .languageTranslate(value!);
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text('Hindi'),
                                            leading: Radio<String>(
                                              activeColor:
                                                  (themeProviderTrue.isDark)
                                                      ? Theme.of(context)
                                                          .colorScheme
                                                          .primary
                                                      : Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary,
                                              value: 'Hindi',
                                              groupValue:
                                                  Provider.of<LanguageProvider>(
                                                          context,
                                                          listen: true)
                                                      .selectedLanguage,
                                              onChanged: (String? value) {
                                                Provider.of<LanguageProvider>(
                                                        context,
                                                        listen: false)
                                                    .languageTranslate(value!);
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text('English'),
                                            leading: Radio<String>(
                                              activeColor:
                                                  (themeProviderTrue.isDark)
                                                      ? Theme.of(context)
                                                          .colorScheme
                                                          .primary
                                                      : Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary,
                                              value: 'English',
                                              groupValue:
                                                  Provider.of<LanguageProvider>(
                                                          context,
                                                          listen: true)
                                                      .selectedLanguage,
                                              onChanged: (String? value) {
                                                Provider.of<LanguageProvider>(
                                                        context,
                                                        listen: false)
                                                    .languageTranslate(value!);
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text('Gujarati'),
                                            leading: Radio<String>(
                                              activeColor:
                                                  (themeProviderTrue.isDark)
                                                      ? Theme.of(context)
                                                          .colorScheme
                                                          .primary
                                                      : Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary,
                                              value: 'Gujarati',
                                              groupValue:
                                                  Provider.of<LanguageProvider>(
                                                          context,
                                                          listen: true)
                                                      .selectedLanguage,
                                              onChanged: (String? value) {
                                                Provider.of<LanguageProvider>(
                                                        context,
                                                        listen: false)
                                                    .languageTranslate(value!);
                                              },
                                            ),
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  (themeProviderTrue.isDark)
                                                      ? Theme.of(context)
                                                          .colorScheme
                                                          .primary
                                                      : Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary,
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              "OK, LET'S GO!",
                                              style: TextStyle(
                                                color:
                                                    (themeProviderTrue.isDark)
                                                        ? Theme.of(context)
                                                            .colorScheme
                                                            .onPrimary
                                                        : Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                                break;
                              case 'Settings':
                                Navigator.of(context).pushNamed('/setting');
                                break;
                            }
                          },
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              value: 'Languages',
                              child: ListTile(
                                leading: Icon(Icons.language,
                                    color: (themeProviderTrue.isDark)
                                        ? Theme.of(context)
                                            .colorScheme
                                            .onPrimary
                                        : Theme.of(context)
                                            .colorScheme
                                            .primary),
                                title: Text(
                                  'Languages',
                                  style: TextStyle(
                                      color: (themeProviderTrue.isDark)
                                          ? Theme.of(context)
                                              .colorScheme
                                              .onPrimary
                                          : Theme.of(context)
                                              .colorScheme
                                              .primary),
                                ),
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'Settings',
                              child: ListTile(
                                leading: Icon(Icons.settings,
                                    color: (themeProviderTrue.isDark)
                                        ? Theme.of(context)
                                            .colorScheme
                                            .onPrimary
                                        : Theme.of(context)
                                            .colorScheme
                                            .primary),
                                title: Text(
                                  'Settings',
                                  style: TextStyle(
                                      color: (themeProviderTrue.isDark)
                                          ? Theme.of(context)
                                              .colorScheme
                                              .onPrimary
                                          : Theme.of(context)
                                              .colorScheme
                                              .primary),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    (languageProviderTrue.selectedLanguage == 'Sanskrit') ? 'अध्याय ${selectedIndex + 1} \n' + gitaProvider.gitaModalList[selectedIndex].chapterName.sanskrit : (languageProviderTrue.selectedLanguage == 'Hindi') ? 'अध्याय ${selectedIndex + 1} \n ' + gitaProvider.gitaModalList[selectedIndex].chapterName.hindi : (languageProviderTrue.selectedLanguage == 'English') ? 'Adhyay ${selectedIndex + 1} \n ' + gitaProvider.gitaModalList[selectedIndex].chapterName.english : 'અધ્યાય ${selectedIndex + 1}  \n' + gitaProvider.gitaModalList[selectedIndex].chapterName.gujarati,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arsenal(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: ListView.builder(
                      itemCount: verses.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                              height: height * 0.2 + 20,
                              width: width,
                              decoration: BoxDecoration(
                                color: themeProviderTrue.isDark
                                    ? Theme.of(context).colorScheme.surface
                                    : Theme.of(context).colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: SelectableText(
                                            (languageProviderTrue.selectedLanguage == 'Sanskrit')
                                                ? gitaProvider.gitaModalList[selectedIndex].verses[index].language.sanskrit
                                                : (languageProviderTrue.selectedLanguage == 'Hindi')
                                                ? gitaProvider.gitaModalList[selectedIndex].verses[index].language.hindi
                                                : (languageProviderTrue.selectedLanguage == 'English')
                                                ? gitaProvider.gitaModalList[selectedIndex].verses[index].language.english
                                                : gitaProvider.gitaModalList[selectedIndex].verses[index].language.gujarati,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.arsenal(
                                              fontSize: 19,
                                              color: themeProviderTrue.isDark
                                                  ? Theme.of(context).colorScheme.primary
                                                  : Theme.of(context).colorScheme.onPrimary,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            cursorColor: Colors.blue,
                                            maxLines: 4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            FlutterClipboard.copy(
                                              (languageProviderTrue.selectedLanguage == 'Sanskrit')
                                                  ? gitaProvider.gitaModalList[selectedIndex].verses[index].language.sanskrit
                                                  : (languageProviderTrue.selectedLanguage == 'Hindi')
                                                  ? gitaProvider.gitaModalList[selectedIndex].verses[index].language.hindi
                                                  : (languageProviderTrue.selectedLanguage == 'English')
                                                  ? gitaProvider.gitaModalList[selectedIndex].verses[index].language.english
                                                  : gitaProvider.gitaModalList[selectedIndex].verses[index].language.gujarati,
                                            );
                                          },
                                          child: Icon(Icons.copy,

                                              color: themeProviderTrue.isDark
                                                  ? Theme.of(context).colorScheme.primary
                                                  : Theme.of(context).colorScheme.onPrimary,size: 23,),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                          },
                                          child: Icon(Icons.share,
                                              color: themeProviderTrue.isDark
                                                  ? Theme.of(context).colorScheme.primary
                                                  : Theme.of(context).colorScheme.onPrimary,size: 23,),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),




                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              '--------------- ⚜ ---------------',
                              style: TextStyle(
                                color: (themeProviderTrue.isDark)
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
