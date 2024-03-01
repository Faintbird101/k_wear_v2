// import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:k_wear_v2/common/styles/spacing.styles.dart';
import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/screens/login/widgets/login.form.dart';
import 'package:k_wear_v2/common/widgets/form.divider.dart';
import 'package:k_wear_v2/features/authentication/screens/login/widgets/login.header.dart';
import 'package:k_wear_v2/common/widgets/social.buttons.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';
import 'package:k_wear_v2/utils/constants/text.string.dart';
// import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title, Subtitle
              const KLoginHeader(),

              // Form
              const KLoginForm(),

              // Divider
              KFormDivider(dividerText: KTexts.orsignInWith.capitalize!,),
              const SizedBox(height: KSizes.spaceBtwnSections),
              // footer
              const KSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
