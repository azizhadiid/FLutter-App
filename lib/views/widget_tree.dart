import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/views/pages/home_page.dart';
import 'package:flutter_app/views/pages/profile_page.dart';
import 'package:flutter_app/views/widgets/navbar_widgets.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadezer Mapp'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDartkModeNotifier.value = !isDartkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDartkModeNotifier,
              builder: (context, isDartkMode, child) {
                return Icon(isDartkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ), // Icon
          ), // IconButton
        ], // actions
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (BuildContext context, dynamic selectedPage, Widget? child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
