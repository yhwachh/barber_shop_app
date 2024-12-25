import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/features/home/widgets/nav_menu/nav_menu_button.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: screenSize.height,
      ),
      child: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
