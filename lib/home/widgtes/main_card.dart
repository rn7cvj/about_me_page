import 'package:about_me/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${t.home.firstName} ${t.home.lastName}",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            SizedBox(
              width: 200,
              child: Divider(color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            Text(
              "${t.home.job} | ${t.home.study}",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            SizedBox(
              width: 200,
              child: Divider(color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkResponse(
                    onTap: () async => await launchUrl(Uri.parse("https://github.com/rn7cvj")),
                    child: SvgPicture.asset(
                      "assets/icons/telegram.svg",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  SizedBox(width: 40),
                  InkResponse(
                    onTap: () async => await launchUrl(Uri.parse("https://github.com/rn7cvj")),
                    child: SvgPicture.asset(
                      "assets/icons/github.svg",
                      width: 40,
                      height: 40,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 200,
              child: Divider(color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextButton(
                  onPressed: () async {
                    Clipboard.setData(ClipboardData(text: "+79642948690"));
                  },
                  child: Text("+79642948690")),
            ),
          ],
        ),
      ),
    );
  }
}
