import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/core/locale/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocale.of(context)!;
    final screenSize = MediaQuery.of(context).size;
    final isMobileSize = screenSize.width < 1000;
    return Wrap(
      children: [
        SizedBox(
          width: 300,
          child: Image.asset(
            "assets/images/outils.jpg",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),
        Container(
          color: Colors.white,
          width: 2,
          height: 200,
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Container(
              color: Colors.white,
              height: 200,
              width: 250,
              child: Column(
                children: [
                  Text(locale.aboutUs,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                      "adsfjasdklfjakls;dfjkl askdjfas;ldkfjasdkl;fjasdl;kfj asdklfjas;ldfjasl;dkfjasl;dkfj eioqwpruqeopwiruqweopiru qeiowur pqwoirupqw oier uqweopiru qpweior uiopqweru iopqwe uriopqw ueiruioqwpueriquwpi"),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
