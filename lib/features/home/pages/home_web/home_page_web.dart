import 'package:flutter/material.dart';
import 'package:homi/features/home/controllers/home/home_controller.dart';
import 'package:homi/features/home/widgets/home_app_bar_widget.dart';
import 'package:homi/features/repository_registry.dart';
import 'package:homi/utils/assets_util.dart';
import 'package:homi/widgets/home_section_button_widget.dart';

class HomePageWeb extends StatefulWidget {
  final String userName;
  final String accessToken;

  HomePageWeb({
    Key? key,
    required this.userName,
    required this.accessToken,
  }) : super(key: key);

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  final HomeController homeController =
      RepositoryRegistry.instance.resolve<HomeController>();

  bool isDisposable = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: () => setState(() {
        isDisposable = false;
      }),
      child: Scaffold(
        appBar: HomeAppBarMobile(
          userName: widget.userName,
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
                          children: [
                            ...List<Widget>.generate(
                              10,
                              (index) => HomeSectionButton(
                                width: 180,
                                height: 200,
                                image: AppAssets.livingroom,
                                text: 'Living Room',
                                onTap: () {},
                                isDisposable: isDisposable,
                                onLongPress: () {
                                  isDisposable = true;
                                  setState(() {});
                                },
                              ),
                            ),
                            Material(
                              color: theme.backgroundColor,
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(15),
                                onTap: () {},
                                child: Container(
                                  height: 200,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ),
                            )
                          ],
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
      ),
    );
  }
}
