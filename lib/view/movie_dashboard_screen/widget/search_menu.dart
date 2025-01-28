import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Res/assets/app_assets.dart';
import '../../../Res/colors/app_colors.dart';

class SearchMenu extends StatelessWidget {
  const SearchMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
          height: 43,
          child: TextField(
            decoration: InputDecoration(
              fillColor: AppColor.blackShade,
              filled: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              hintText: 'Search',
              hintStyle: TextStyle(
                  color: AppColor.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide(width: 2, color: Colors.white)),
              suffixIcon: Icon(
                CupertinoIcons.search,
                size: 16,
                color: AppColor.grey,
              ),
            ),
          ),
        )),
        SizedBox(
          width: 8,
        ),
        GestureDetector(
          child: Container(
            height: 43,
            width: 43,
            decoration: BoxDecoration(
                color: AppColor.backgroundColor,
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: SvgPicture.asset(
                AppAssets.menu,
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
