import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProviderTrue = Provider.of<ThemeProvider>(context, listen: true);
    ThemeProvider themeProviderFalse = Provider.of<ThemeProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: themeProviderTrue.isDark
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          leading:GestureDetector(
              onTap:() {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back, color: (themeProviderTrue.isDark)
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onPrimary)),
          scrolledUnderElevation: 0.1,
          backgroundColor: themeProviderTrue.isDark
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.primary,
          centerTitle: true,
          title: Text(
            'Settings',
            style:  GoogleFonts.arsenal(
              color: themeProviderTrue.isDark
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onPrimary,
              fontSize: 21,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: themeProviderTrue.isDark
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                'Notification',
                style:  GoogleFonts.arsenal(

                  color: themeProviderTrue.isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),

            ),
            // Divider(color: themeProviderTrue.isDark
            //     ? Theme.of(context).colorScheme.primary
            //     : Theme.of(context).colorScheme.onPrimary,thickness: 0.5,),
            ListTile(
              leading: Icon(
                themeProviderTrue.isDark ? Icons.nights_stay : Icons.wb_sunny,
                color: themeProviderTrue.isDark
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                themeProviderTrue.isDark ? 'Dark Mode' : 'Light Mode',
                style:  GoogleFonts.arsenal(
                  color: themeProviderTrue.isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              trailing: Switch(
                inactiveThumbColor: Theme.of(context).colorScheme.primary,
                activeColor: Theme.of(context).colorScheme.primary,
                focusColor: Theme.of(context).colorScheme.onPrimary,
                inactiveTrackColor: Theme.of(context).colorScheme.onPrimary,
                value: themeProviderTrue.isDark,
                onChanged: (value) {
                  themeProviderFalse.ChangeTheme();
                },
              ),
            ),
            Divider(color: themeProviderTrue.isDark
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onPrimary,thickness: 0.5,),
            ListTile(
              leading: Icon(
                Icons.star,
                color: themeProviderTrue.isDark
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                'Rate App',
                style:  GoogleFonts.arsenal(
                  color: themeProviderTrue.isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),

            ),
            // Divider(color: themeProviderTrue.isDark
            //     ? Theme.of(context).colorScheme.primary
            //     : Theme.of(context).colorScheme.onPrimary,thickness: 0.5,),
            ListTile(
              leading: Icon(
                Icons.share,
                color: themeProviderTrue.isDark
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                'Share App',
                style:  GoogleFonts.arsenal(
                  color: themeProviderTrue.isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            Divider(color: themeProviderTrue.isDark
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onPrimary,thickness: 0.5,),
            ListTile(
              leading: Icon(
                Icons.policy,
                color: themeProviderTrue.isDark
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                'Privacy Policy',
                style:  GoogleFonts.arsenal(
                  color: themeProviderTrue.isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),

            ),
            // Divider(color: themeProviderTrue.isDark
            //     ? Theme.of(context).colorScheme.primary
            //     : Theme.of(context).colorScheme.onPrimary,thickness: 0.5,),
            ListTile(
              leading: Icon(
                Icons.article,
                color: themeProviderTrue.isDark
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                'Terms and Conditions',
                style:  GoogleFonts.arsenal(
                  color: themeProviderTrue.isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),

            ),
            // Divider(color: themeProviderTrue.isDark
            //     ? Theme.of(context).colorScheme.primary
            //     : Theme.of(context).colorScheme.onPrimary,thickness: 0.5,),
            ListTile(
              leading: Icon(
                Icons.cookie,
                color: themeProviderTrue.isDark
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                'Cookies Policy',
                style:  GoogleFonts.arsenal(
                  color: themeProviderTrue.isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            Divider(color: themeProviderTrue.isDark
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onPrimary,thickness: 0.5,),
            ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: themeProviderTrue.isDark
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                'Contact',
                style:  GoogleFonts.arsenal(
                  color: themeProviderTrue.isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),

            ),
            // Divider(color: themeProviderTrue.isDark
            //     ? Theme.of(context).colorScheme.primary
            //     : Theme.of(context).colorScheme.onPrimary,thickness: 0.5,),
            ListTile(
              leading: Icon(
                Icons.feedback,
                color: themeProviderTrue.isDark
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                'Feedback',
                style:  GoogleFonts.arsenal(
                  color: themeProviderTrue.isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),

            ),
            // Divider(color: themeProviderTrue.isDark
            //     ? Theme.of(context).colorScheme.primary
            //     : Theme.of(context).colorScheme.onPrimary,thickness: 0.5,),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: themeProviderTrue.isDark
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
              title: Text(
                'Logout',
                style:  GoogleFonts.arsenal(
                  color: themeProviderTrue.isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
