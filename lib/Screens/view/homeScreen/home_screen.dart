import 'package:bhagvad_geeta_app/Screens/provider/gita_shloks_provider.dart';
import 'package:bhagvad_geeta_app/Screens/provider/language_provider.dart';
import 'package:bhagvad_geeta_app/Screens/provider/language_translate_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../utils/globals/global.dart';
import '../../provider/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  get languageIndex => null;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ThemeProvider themeProviderTrue =
        Provider.of<ThemeProvider>(context, listen: true);
    ThemeProvider themeProviderFalse =
        Provider.of<ThemeProvider>(context, listen: false);

    LanguageProvider languageProviderTrue =
        Provider.of<LanguageProvider>(context, listen: true);
    LanguageProvider languageProviderFalse =
    Provider.of<LanguageProvider>(context, listen: false);

    LanguageTranslateProvider languageTranslateProviderTrue =
    Provider.of<LanguageTranslateProvider>(context, listen: true);
    LanguageTranslateProvider languageTranslateProviderFalse =
    Provider.of<LanguageTranslateProvider>(context, listen: false);

    GitaProvider gitaProvider=
    Provider.of<GitaProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: (themeProviderTrue.isDark)
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          scrolledUnderElevation: 0.1,
          backgroundColor: (themeProviderTrue.isDark)
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.primary,
          actions: [
            PopupMenuButton<String>(
              color: (themeProviderTrue.isDark)
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondary,
              icon: Icon(Icons.more_vert,
                  color: (themeProviderTrue.isDark)
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary),
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
                              Text(
                                'Choose your preferred language\n(Don\'t worry, you can change it later.)',
                                textAlign: TextAlign.center, style:
                              TextStyle(fontSize: 15),
                              ),
                              ListTile(
                                title: Text('Sanskrit'),
                                leading: Radio<String>(
                                  activeColor:
                                  (themeProviderTrue.isDark)
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.onPrimary,
                                  value: 'Sanskrit',
                                  groupValue: Provider.of<LanguageProvider>(context, listen: true).selectedLanguage,
                                  onChanged: (String? value) {
                                    Provider.of<LanguageProvider>(context, listen: false).languageTranslate(value!);
                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('Hindi'),
                                leading: Radio<String>(
                                  activeColor:
                                  (themeProviderTrue.isDark)
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.onPrimary,
                                  value: 'Hindi',
                                  groupValue: Provider.of<LanguageProvider>(context, listen: true).selectedLanguage,
                                  onChanged: (String? value) {
                                    Provider.of<LanguageProvider>(context, listen: false).languageTranslate(value!);

                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('English'),
                                leading: Radio<String>(
                                  activeColor:
                                  (themeProviderTrue.isDark)
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.onPrimary,
                                  value: 'English',
                                  groupValue: Provider.of<LanguageProvider>(context, listen: true).selectedLanguage,
                                  onChanged: (String? value) {
                                    Provider.of<LanguageProvider>(context, listen: false).languageTranslate(value!);

                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('Gujarati'),
                                leading: Radio<String>(
                                  activeColor:
                                  (themeProviderTrue.isDark)
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.onPrimary,
                                  value: 'Gujarati',
                                  groupValue: Provider.of<LanguageProvider>(context, listen: true).selectedLanguage,
                                  onChanged: (String? value) {
                                    Provider.of<LanguageProvider>(context, listen: false).languageTranslate(value!);

                                  },
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  (themeProviderTrue.isDark)
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.onPrimary,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK, LET'S GO!",style: TextStyle(
                                    color: (themeProviderTrue.isDark)
                                        ? Theme.of(context).colorScheme.onPrimary
                                        : Theme.of(context).colorScheme.primary,
                                ),),
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
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'Languages',
                  child: ListTile(
                    leading: Icon(Icons.language,
                        color: (themeProviderTrue.isDark)
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.primary),
                    title: Text(
                      'Languages',
                      style: TextStyle(
                          color: (themeProviderTrue.isDark)
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Settings',
                  child: ListTile(
                    leading: Icon(Icons.settings,
                        color: (themeProviderTrue.isDark)
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.primary),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                          color: (themeProviderTrue.isDark)
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: height * 0.2 - 55,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      left: width * 0.09,
                      child: Image.asset(
                        'assets/images/bansri.png',
                        width: width * 0.2,
                        height: height * 0.08,
                      ),
                    ),
                    Positioned(
                      top: height * 0.04 + 10,
                      bottom: 0,
                      right: width * 0.09,
                      child: Image.asset(
                        'assets/images/bansri2.png',
                        width: width * 0.2,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height * 0.0001),
                        Text(
                          (languageProviderTrue.selectedLanguage == 'Sanskrit')
                              ? translate[0]
                              : (languageProviderTrue.selectedLanguage == 'Hindi')
                              ? translate[1]
                              : (languageProviderTrue.selectedLanguage == 'English')
                              ? translate[2]
                              : translate[3],
                          style: GoogleFonts.arsenal(
                            color: (themeProviderTrue.isDark)
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.onPrimary,
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: themeProviderTrue.isDark
                          ? Theme.of(context).colorScheme.surface
                          : Theme.of(context).colorScheme.onSecondary,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ListView.builder(
                        itemCount: gitaProvider.gitaModalList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                selectedIndex = index;
                                 verses = gitaProvider.gitaModalList[selectedIndex].verses;
                                Navigator.of(context).pushNamed('/shlock');
                              },
                              child: buildColumn(themeProviderTrue, context, languageProviderTrue, index, gitaProvider));
                        },
                      ),
                    ),
                  ),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column buildColumn(ThemeProvider themeProviderTrue, BuildContext context, LanguageProvider languageProviderTrue, int index, GitaProvider gitaProvider) {
    return Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.games, color:themeProviderTrue.isDark
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.primary,),
                                  title: Text(
                                    ' ${ (languageProviderTrue.selectedLanguage == 'Sanskrit')
                                        ? 'अध्याय ${index+1} :- ' +  gitaProvider.gitaModalList[index].chapterName.sanskrit
                                        : (languageProviderTrue.selectedLanguage == 'Hindi')
                                        ? 'अध्याय ${index+1} :- ' + gitaProvider.gitaModalList[index].chapterName.hindi
                                        : (languageProviderTrue.selectedLanguage == 'English')
                                        ? 'Adhyay ${index+1} :- ' + gitaProvider
                                        .gitaModalList[index].chapterName.english
                                        : 'અધ્યાય ${index+1} :- ' + gitaProvider
                                        .gitaModalList[index].chapterName.gujarati}',

                                    style: GoogleFonts.arsenal(
                                      color: themeProviderTrue.isDark
                                          ? Theme.of(context).colorScheme.primary
                                          : Theme.of(context).colorScheme.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                ),
                                const Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                              ],
                            );
  }


}
