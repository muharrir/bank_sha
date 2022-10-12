import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpSetKtpPage extends StatelessWidget {
  const SignUpSetKtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Verify Your\nAccount',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: softWhiteColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                    ),
                  ),
                ),
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: const BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       image: AssetImage(
                //         'assets/img_profile.png',
                //       ),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Passport/ID Card',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-success');
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CustomTextWidget(
            title: 'Skip for Now',
            onTap: () {
              Navigator.pushNamed(context, '/sign-up-success');
            },
          ),
        ],
      ),
    );
  }
}
