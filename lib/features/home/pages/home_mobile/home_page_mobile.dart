import 'package:flutter/material.dart';
import 'package:homi/features/home/controllers/home/home_controller.dart';
import 'package:homi/features/home/widgets/home_app_bar_widget.dart';
import 'package:homi/features/repository_registry.dart';
import 'package:homi/utils/assets_util.dart';
import 'package:homi/widgets/home_section_button_widget.dart';

class HomePageMobile extends StatelessWidget {
  final HomeController homeController = RepositoryRegistry.instance.resolve<HomeController>();
  final String userName;

  HomePageMobile({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: HomeAppBarMobile(
        userName: userName,
      ),
      body: ValueListenableBuilder<HomeState>(
          valueListenable: homeController,
          builder: (context, state, _) {
            switch (state.runtimeType) {
              case HomeInitialState:
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Wrap(
                        runSpacing: 16,
                        spacing: 20,
                        alignment: WrapAlignment.start,
                        children: _loadHomeSections(
                          height: size.height * .2,
                          width: size.width * .43,
                        ),
                      ),
                    ),
                  ),
                );
              default:
                return Center(
                  child: CircularProgressIndicator(),
                );
            }
          }),
    );
  }

  List<Widget> _loadHomeSections({
    required double height,
    required double width,
  }) {
    return List<Widget>.generate(
      10,
      (index) => HomeSectionButton(
        width: width,
        height: height,
        image: AppAssets.livingroom,
        text: 'Living Room',
        onTap: () {},
      ),
    );
  }
}
