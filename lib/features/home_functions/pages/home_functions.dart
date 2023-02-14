import 'package:flutter/material.dart';
import 'package:homi/features/home_functions/lights/pages/lights_page.dart';
import 'package:homi/features/home_functions/temperature/pages/temperature_page.dart';
import 'package:homi/widgets/buttons.dart';
import 'package:homi/widgets/devices_data.dart';
import 'package:iconsax/iconsax.dart';

class HomeFunctionsPage extends StatefulWidget {
  const HomeFunctionsPage({Key? key}) : super(key: key);

  @override
  State<HomeFunctionsPage> createState() => _HomeFunctionsPageState();
}

class _HomeFunctionsPageState extends State<HomeFunctionsPage> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: theme.primaryColor,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: TopSelectButton(),
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            TemperaturePage(),
            LightsPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageController.positions.isNotEmpty
            ? _pageController.page?.toInt() ?? 0
            : 0,
        onTap: (index) => _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        ),
        selectedLabelStyle: TextStyle(fontSize: 1),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.arrow_square_up),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.lamp_on),
            label: '',
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          margin: EdgeInsets.only(top: 60),
          child: DevicesData(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
