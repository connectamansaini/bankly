import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OutlineContainerWidget extends StatelessWidget {
  const OutlineContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Container(
            height: 12.h,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 179, 120, 255),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Entertainment',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: const Color.fromRGBO(30, 30, 30, 1),
                      ),
                ),
                Text(
                  '2334 points',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: const Color.fromRGBO(
                          112,
                          0,
                          255,
                          1,
                        ),
                      ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            'assets/home/star.png',
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
