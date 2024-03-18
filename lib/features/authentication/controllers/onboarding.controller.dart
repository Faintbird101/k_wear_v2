import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/screens/auth/main.page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables
  var pageController = PageController();
  int currentPageIndex = 0;
  String next = 'Next';
  String done = 'Done';

  String nextbutton() {
    if (currentPageIndex == 2) {
      return done;
    }
    return next;
  }

  // Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex = index;

  // Jump to current page selected
  void dotNavigationClick(index) {
    currentPageIndex = index;
    pageController.jumpTo(index);
  }

  // update current index & jump to next page
  void nextPage() async {
    if (currentPageIndex == 2) {
    //   final storage = GetStorage();

    //   if (kDebugMode) {
    //   log("==================  GET STORAGE Next Button =================");
    //   log(storage.read('isFirstTime'));
    // }
    //   storage.write('isFirstTime', false);
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isFirstTime', true);
      Get.off(
        () => const Mainpage(),
      );
    }
    pageController.nextPage(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  // update current index & jump to last page
  void skipPage() {
    Get.off(
      () => const Mainpage(),
    );
    // Get.to(() => const Mainpage());
  }
}
