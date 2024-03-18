import 'package:k_wear_v2/common/widgets/custom.shapes/containers/primary.header.container.dart';
import 'package:k_wear_v2/common/widgets/custom.shapes/containers/search.bar.dart';
import 'package:k_wear_v2/common/widgets/texts/section.heading.dart';
import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/controllers/user.controller.dart';
import 'package:k_wear_v2/features/shop/screens/Home/widgets/home.appbar.dart';
import 'package:k_wear_v2/features/shop/screens/Home/widgets/home.categories.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final usercontroller = Get.put(UserController());

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            KPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- AppBar --
                  const KHomeAppBar(),
                  const SizedBox(height: KSizes.defaultnormalSpace),

                  // -- SearchBar --
                  const KSearchBar(),
                  const SizedBox(height: KSizes.defaultnormalSpace),

                  // -- Categories --
                  Padding(
                    padding: const EdgeInsets.only(left: KSizes.defaultSpace),
                    child: Column(
                      children: [
                        // --Heading --
                        KSectionHeading(
                          showActionButton: true,
                          title: "Popular Categories",
                          buttonTitle: 'View All',
                          onPressed: () {},
                        ),
                        const SizedBox(height: KSizes.defaultnormalSpace),

                        //  -- Categories --
                        const KHomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


