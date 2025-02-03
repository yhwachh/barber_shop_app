import 'package:animated_fab_button_menu/animated_fab_button_menu.dart';
import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/core/design_system/app_ui.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/book_appointment_button.dart';
import 'package:barber_shop_app/src/core/locale/l10n.dart';
import 'package:barber_shop_app/src/core/routing/app_router.gr.dart';
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
    final isMobileSize = screenSize.width < 1100;

    return AutoTabsRouter(
        routes: [HomeRoute(), ServicesRoute(), AboutUsRoute(), ContactRoute()],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
              backgroundColor: theme.colors.bgColor,
              floatingActionButton: isMobileSize
                  ? FabMenu(
                      fabBackgroundColor: Color(0xFFE9C664),
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
                              tabsRouter.setActiveIndex(
                                0,
                              );
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
                              tabsRouter.setActiveIndex(1);
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
                              tabsRouter.setActiveIndex(2);
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
                              tabsRouter.setActiveIndex(3);
                              context.router.maybePop();
                            }),
                      ],
                    )
                  : null,
              body: child,
              appBar: AppBar(
                backgroundColor: theme.colors.bgColor,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Gk",
                    style: TextStyle(
                      color: theme.colors.textColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: isMobileSize
                    ? null
                    : NavMenuWidget(
                        selectedItemIndex: tabsRouter.activeIndex,
                        onChange: (index) {
                          tabsRouter.setActiveIndex(index);
                        },
                      ),
                actions: [BookAppointmentButton()],
              ));
        });
  }
}
