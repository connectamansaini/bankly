import 'package:bankly/src/card/views/card_view.dart';
import 'package:bankly/src/core/presentation/colors.dart';
import 'package:bankly/src/core/presentation/widgets/spacing.dart';
import 'package:bankly/src/home/models/category.dart';
import 'package:bankly/src/home/views/widgets/custom_button.dart';
import 'package:bankly/src/home/views/widgets/custom_container.dart';
import 'package:bankly/src/home/views/widgets/outline_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodySmall!;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 60,
        leadingWidth: 160,
        leading: Center(
          child: Text(
            'Good Morning\nJohn Dahmer',
            style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: const Badge(
                smallSize: 8,
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  Icons.circle_notifications,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // TODO(ask): How to change textColor for a view
              children: [
                Text(
                  'Total Balance',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: const Color.fromARGB(255, 217, 217, 217),
                      ),
                ),
                Text(
                  '₹234,300.32',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const Spacing(size: SpacingSize.small),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      title: 'Pay',
                      icon: Icons.arrow_forward_ios,
                      onPressed: () {},
                    ),
                    const Spacing(
                      isVertical: false,
                      size: SpacingSize.large,
                    ),
                    CustomButton(
                      title: 'Add',
                      icon: Icons.add,
                      onPressed: () {},
                    ),
                  ],
                ),
                Divider(
                  height: 40,
                  thickness: 1,
                  indent: 10.w,
                  endIndent: 10.w,
                  color: const Color.fromARGB(255, 66, 66, 66),
                ),
                Image.asset(
                  'assets/home/debit-card.png',
                  alignment: Alignment.topCenter,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 28.h,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(40),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Spacing(size: SpacingSize.xxL),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                            color: AppColors.primaryColor,
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 12,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: const Text('Request'),
                                      ),
                                    ),
                                    const Spacing(
                                      isVertical: false,
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 12,
                                          ),
                                        ),
                                        child: const Text('History'),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacing(size: SpacingSize.large),
                                const TitleWidget(title: 'Your rewards'),
                                const Spacing(),
                                const OutlineContainerWidget(),
                                const Spacing(size: SpacingSize.regular),
                                const TitleWidget(title: 'Explore Categories'),
                                const Spacing(size: SpacingSize.medium),
                                // TODO(ask): How to remove padding in starting in front of gridView?
                                CategoriesGridView(textStyle: textStyle),
                                const Spacing(size: SpacingSize.xL),
                                const TitleWidget(
                                  title: 'Hey John, you might like this',
                                ),
                                const Spacing(size: SpacingSize.xL),
                                const CustomContainer(),
                                const Spacing(size: SpacingSize.xL),
                                const TitleWidget(
                                  title: 'Use Bankly and get',
                                ),
                                const Spacing(size: SpacingSize.large),
                                SizedBox(
                                  height: 20.h,
                                  child: GridView.count(
                                    scrollDirection: Axis.horizontal,
                                    crossAxisCount: 1,
                                    mainAxisSpacing: 24,
                                    children: const [
                                      SmallCustomContainer(
                                        title: '20% OFF',
                                        subtitle: '',
                                        image: 'assets/home/google-play.png',
                                      ),
                                      SmallCustomContainer(
                                        title: '5% OFF',
                                        subtitle: 'On bankly card',
                                        image: 'assets/home/card.png',
                                      ),
                                      SmallCustomContainer(
                                        title: '10% OFF',
                                        subtitle: 'On foods',
                                        image: 'assets/home/diet.png',
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacing(size: SpacingSize.xxL),
                                Container(
                                  height: 20.h,
                                  width: double.infinity,
                                  padding: const EdgeInsets.only(left: 18),
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(36, 211, 181, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Bring your card at home\nonly, for 299/-',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.black,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 24,
                                              ),
                                            ),
                                            child: const Text('Book now'),
                                          )
                                        ],
                                      ),
                                      Image.asset(
                                        'assets/home/big-card.png',
                                        scale: 2,
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacing(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -10,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => const CardView(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(12),
                            backgroundColor: Colors.black,
                          ),
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            size: 36,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({
    required this.textStyle,
    super.key,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        crossAxisSpacing: 28,
        mainAxisSpacing: 4,
        children: List.generate(categories.length, (index) {
          return Center(
            child: Column(
              children: [
                Card(
                  elevation: 8,
                  shape: const CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 28,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 27.6,
                      backgroundImage: AssetImage(
                        categories[index].image,
                      ),
                    ),
                  ),
                ),
                const Spacing(size: SpacingSize.tiny),
                Text(
                  categories[index].title,
                  style: textStyle,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 20,
            color: const Color.fromRGBO(99, 111, 140, 1),
          ),
    );
  }
}
