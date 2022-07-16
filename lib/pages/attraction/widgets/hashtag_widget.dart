import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';

class HashtagWidget extends StatelessWidget {
  final String text;
  const HashtagWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.grayBg,
      ),
      margin: const EdgeInsets.only(right: 12, bottom: 8),
      child: Text(
        "#${text}",
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
      ),
    );
  }
}
