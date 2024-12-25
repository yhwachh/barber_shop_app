import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/ui_scaffold.dart';
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
    return Scaffold(
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
        NavMenuWidget(
          selectedItemIndex: pageSelectedIndex,
          onChange: (index) {
            scrollToId.animateTo(index.toString(),
                duration: Durations.extralong1, curve: Curves.fastOutSlowIn);
          },
        ),
      ],
    ));
  }
}
