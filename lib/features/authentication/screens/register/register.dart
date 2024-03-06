import 'package:flutter/material.dart';
import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';
import 'package:k_wear_v2/utils/constants/text.string.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              // Title
              Text(
                KTexts.registerTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: KSizes.spaceBtwnSections),
              // Form
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Name
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                              labelText: KTexts.firstName,
                              prefixIcon: Icon(MdiIcons.accountOutline),
                            ),
                          ),
                        ),
                        const SizedBox(height: KSizes.spaceBtwnInputFields),
                        // Email
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                              labelText: KTexts.lastName,
                              prefixIcon: Icon(MdiIcons.accountOutline),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: KSizes.spaceBtwnSections),
                    // Password
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: KTexts.phoneNumber,
                      ),
                    ),
                    SizedBox(height: KSizes.spaceBtwnSections),
                    // Confirm Password
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: KTexts.email,
                      ),
                    ),
                    SizedBox(height: KSizes.spaceBtwnSections),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
