import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/shop/screens/Home/home.page.dart';
import 'package:k_wear_v2/utils/helpers/helper.functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            child: NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.selectedIndex.value = index,
              backgroundColor: darkMode ? $styles.colors.black : $styles.colors.white,
              indicatorColor: darkMode ? $styles.colors.white.withOpacity(0.1) : $styles.colors.black.withOpacity(0.1),
              destinations: [
                // HomeScreen(),
                NavigationDestination(
                  icon: Icon(MdiIcons.homeOutline),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(MdiIcons.storefrontOutline),
                  label: 'Store',
                ),
                NavigationDestination(
                  icon: Icon(MdiIcons.heartOutline),
                  label: 'Wishlist',
                ),
                NavigationDestination(
                  icon: Icon(MdiIcons.accountOutline),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const Scaffold(
      body: Center(
        child: Text('Store'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Wishlist'),
      ),
    ),
    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(MdiIcons.exitToApp),
          onPressed: () {
            usercontroller.signout();
          },
        ),
      ),
      body: const Center(
        child: Text('Profile'),
      ),
    ),
  ];
}
