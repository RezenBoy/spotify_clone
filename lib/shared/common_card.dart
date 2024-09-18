import 'package:flutter/material.dart';
import 'package:spotify_clone/shared/app_text_style.dart';

class CommonCard extends StatelessWidget {
  final String tittle;
  bool isSelected;

  CommonCard({super.key, required this.tittle, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(30)),
      child: Text(tittle,style: getTextStyle(AppTextStyle.subPrimaryText),),
    );
  }
}
