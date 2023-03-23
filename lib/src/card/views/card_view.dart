import 'package:bankly/src/core/presentation/colors.dart';
import 'package:bankly/src/core/presentation/theme.dart';
import 'package:bankly/src/core/presentation/widgets/spacing.dart';
import 'package:bankly/src/onboarding/views/widgets/back_button_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButtonAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Your',
                style: Theme.of(context).largeTitlePrimaryTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                children: [
                  TextSpan(
                    text: ' Bankly',
                    style: Theme.of(context)
                        .largeTitlePrimaryTextStyle
                        .copyWith(color: AppColors.primaryColor),
                  ),
                  const TextSpan(text: ' Card'),
                ],
              ),
            ),
            const Spacing(size: SpacingSize.large),
            const CardWidget(),
            const Spacer(),
            CustomElevatedButton(
              title: 'How to use my card?',
              onPressed: () {},
            ),
            const Spacing(size: SpacingSize.regular),
            CustomElevatedButton(
              title: 'Order?',
              onPressed: () {},
            ),
            const Spacing(size: SpacingSize.regular),
            CustomElevatedButton(
              title: 'Transactions',
              onPressed: () {},
            ),
            const Spacing(size: SpacingSize.regular),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Already have a bankly card? ',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                children: [
                  TextSpan(
                    text: 'Activate',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            const Spacing(size: SpacingSize.xxL),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatefulWidget {
  const CardWidget({
    super.key,
  });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    const cardNumber = '4737 9618 4974';

    return Container(
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(36, 211, 181, 1),
            Color.fromRGBO(144, 158, 192, 1),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Balance\n',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.lightWhiteColor,
                        ),
                    children: [
                      TextSpan(
                        text: '₹234,300.32',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Image.asset(
                  'assets/home/bankly-icon.png',
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '$cardNumber 2489',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white,
                      ),
                ),
                const Spacer(),
                IconButton(
                  // padding: EdgeInsets.zero,
                  // constraints: const BoxConstraints(),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Card holder name\n',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.lightWhiteColor,
                        ),
                    children: [
                      TextSpan(
                        text: 'John Dahmer',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                            ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Expiry date\n',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: AppColors.lightWhiteColor,
                          ),
                      children: [
                        TextSpan(
                          text: '02/30',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.white,
                                  ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 18),
        backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
