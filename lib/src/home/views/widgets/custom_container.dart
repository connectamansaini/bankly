import 'package:bankly/src/core/presentation/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(36, 211, 181, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          // right: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Order your welcome kit for FREE',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const Spacing(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome kits includes',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const Spacing(
                      size: SpacingSize.tiny,
                    ),
                    Text(
                    // ignore: lines_longer_than_80_chars
                      '\u2022 Free bankly badge.\n\u2022 Free bankly t-shirt.\n\u2022 More freebies,',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const Spacing(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                        ),
                        backgroundColor: const Color.fromRGBO(
                          114,
                          228,
                          160,
                          1,
                        ),
                      ),
                      child: const Text('Order now!'),
                    )
                  ],
                ),
                Image.asset(
                  'assets/home/open-box.png',
                  scale: 1.2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SmallCustomContainer extends StatelessWidget {
  const SmallCustomContainer({
    required this.title,
    required this.subtitle,
    required this.image,
    super.key,
  });
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          const Spacing(size: SpacingSize.regular),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: const Color.fromRGBO(191, 191, 191, 1),
                  fontWeight: FontWeight.w700,
                ),
          ),
          const Spacer(),
          Image(
            image: AssetImage(
              image,
            ),
          )
        ],
      ),
    );
  }
}
