import 'package:animated_fab_button_menu/animated_fab_button_menu.dart';
import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/core/design_system/app_ui.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/book_appointment_button.dart';
import 'package:barber_shop_app/src/core/locale/l10n.dart';
import 'package:barber_shop_app/src/features/home/pages/about_us_page.dart';
import 'package:barber_shop_app/src/features/home/pages/contact_page.dart';
import 'package:barber_shop_app/src/features/home/pages/home_page.dart';
import 'package:barber_shop_app/src/features/home/pages/hours_page.dart';
import 'package:barber_shop_app/src/features/home/pages/prices_page.dart';
import 'package:barber_shop_app/src/features/home/pages/services_page.dart';
import 'package:barber_shop_app/src/features/home/widgets/nav_menu/nav_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollToId scrollToId = ScrollToId();
  late final ScrollController scrollController;
  int pageSelectedIndex = 0;

  void listenScroll() {
    final index = scrollToId.idPosition();
    if (index == null) return;

    setState(() {
      pageSelectedIndex = int.parse(index);
    });
  }

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()..addListener(listenScroll);
    scrollToId = ScrollToId(scrollController: scrollController);
  }

  @override
  void dispose() {
    listenScroll;
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final locale = AppLocale.of(context)!;
    final screenSize = MediaQuery.of(context).size;
    final isMobileSize = screenSize.width < 1000;

    return Scaffold(
        backgroundColor: theme.colors.bgColor,
        floatingActionButton: isMobileSize
            ? FabMenu(
                fabBackgroundColor: theme.colors.bgColor,
                elevation: 2.0,
                fabAlignment: Alignment.bottomRight,
                fabIcon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
                closeMenuButton: Icon(
                  size: 40,
                  Icons.arrow_back,
                  color: theme.colors.bgColor,
                ),
                overlayOpacity: 0.5,
                overlayColor: Colors.white,
                children: [
                  MenuItem(
                      title: locale.home,
                      style: TextStyle(
                        color: theme.colors.bgColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      onTap: () {
                        scrollToId.animateTo("0",
                            duration: Durations.extralong1,
                            curve: Curves.fastOutSlowIn);
                        context.router.maybePop();
                      }),
                  MenuItem(
                      title: locale.aboutUs,
                      style: TextStyle(
                        color: theme.colors.bgColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      onTap: () {
                        scrollToId.animateTo("1",
                            duration: Durations.extralong1,
                            curve: Curves.fastOutSlowIn);
                        context.router.maybePop();
                      }),
                  MenuItem(
                      title: locale.services,
                      style: TextStyle(
                        color: theme.colors.bgColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      onTap: () {
                        scrollToId.animateTo("2",
                            duration: Durations.extralong1,
                            curve: Curves.fastOutSlowIn);
                        context.router.maybePop();
                      }),
                  MenuItem(
                      title: locale.prices,
                      style: TextStyle(
                        color: theme.colors.bgColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      onTap: () {
                        scrollToId.animateTo("3",
                            duration: Durations.extralong1,
                            curve: Curves.fastOutSlowIn);
                        context.router.maybePop();
                      }),
                  MenuItem(
                      title: locale.hours,
                      style: TextStyle(
                        color: theme.colors.bgColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      onTap: () {
                        scrollToId.animateTo("4",
                            duration: Durations.extralong1,
                            curve: Curves.fastOutSlowIn);
                        context.router.maybePop();
                      }),
                  MenuItem(
                      title: locale.contactUS,
                      style: TextStyle(
                        color: theme.colors.bgColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      onTap: () {
                        scrollToId.animateTo("5",
                            duration: Durations.extralong1,
                            curve: Curves.fastOutSlowIn);
                        context.router.maybePop();
                      }),
                ],
              )
            : null,
        appBar: AppBar(
          shadowColor: Colors.white,
          elevation: 30,
          backgroundColor: theme.colors.bgColor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Text("GK",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          title: isMobileSize
              ? null
              : NavMenuWidget(
                  selectedItemIndex: pageSelectedIndex,
                  onChange: (index) {
                    scrollToId.animateTo(index.toString(),
                        duration: Durations.extralong1,
                        curve: Curves.fastOutSlowIn);
                  },
                ),
          actions: [
            BookAppointmentButton(),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Stack(
          children: [
            InteractiveScrollViewer(
              scrollToId: scrollToId,
              children: [
                ScrollContent(id: "0", child: HomePage()),
                ScrollContent(id: "1", child: AboutUsPage()),
                ScrollContent(id: "2", child: ServicesPage()),
                ScrollContent(id: "3", child: PricesPage()),
                ScrollContent(id: "4", child: HoursPage()),
                ScrollContent(id: "5", child: ContactPage()),
              ],
            ),
          ],
        ));
  }
}
