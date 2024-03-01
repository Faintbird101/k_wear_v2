import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';
import 'package:k_wear_v2/utils/constants/text.string.dart';

class KLoginForm extends StatelessWidget {
  const KLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: KSizes.spaceBtwnSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(MdiIcons.email),
                labelText: KTexts.email,
                labelStyle: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwnInputFields),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(MdiIcons.lock),
                  labelText: KTexts.password,
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  suffixIcon: Icon(MdiIcons.eye)),
            ),
            const SizedBox(height: KSizes.spaceBtwnInputFields / 2),
    
            // Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text(
                      KTexts.rememberMe,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    KTexts.forgotPassword,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: KSizes.spaceBtwnSections),
    
            // sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  KTexts.signIn,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwnItems),
    
            // create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  KTexts.createAccount,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            // const Sized Box(height: KSizes.spaceBtwnSections),
          ],
        ),
      ),
    );
  }
}