import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:hugeicons_pro/hugeicons.dart';
import 'package:quizy/services/providerService.dart';
import 'package:quizy/services/themeService.dart';
import 'package:quizy/services/sharedPreferencesService.dart';
import 'package:quizy/widgets/screen/sections/AllQuizzesScreen.dart';
import 'package:quizy/widgets/screen/sections/HomeScreen.dart';
import 'package:quizy/widgets/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Provider provider = Get.put(Provider());
  //update values
  provider.updateScore( await SettingsService.getCurrentScore());
  provider.updateHighScore(await SettingsService.getHighScore());
  provider.updateRecent( await SettingsService.getRecent());

  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quizy',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  final Provider provider = Get.find<Provider>();
  final List<Widget> _screens = [
    const HomeScreen(),
    const AllQuizzesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SystemUiStyleWrapper(
        child: Obx(() {
          return Scaffold(
      body: _screens[provider.selectedSection.value],
        bottomNavigationBar:Container(
          height: 66,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, -2), // shadow upwards
              ),
            ],
          ),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() => provider.updateSelectedSection(0));
                      },
                      child: Container(
                        width: 80,
                        height: 50,
                        color: Colors.transparent,
                        child: Center(
                          child: provider.selectedSection.value == 0 ?
                          Icon(HugeIconsSolid.home01,size: 27,color: AppColors.accent):
                          Icon(HugeIconsStroke.home01,size: 27,color: Colors.grey,),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() => provider.updateSelectedSection(1));
                      },
                      child: Container(
                        height: 50,
                        color: Colors.transparent,
                        child: Center(
                          child: provider.selectedSection.value == 1 ?
                          Icon(HugeIconsSolid.quiz03,size: 27,color: AppColors.accent):
                          Icon(HugeIconsStroke.quiz03,size: 27,color: Colors.grey,),
                        ),
                      ),
                    ),
                  ),
                ],
          ),
        ));
        }),
    );
  }
}


