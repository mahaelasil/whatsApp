import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../styles/colors.dart';
import '../widgets/default-text.dart';

class WhatsappCallsListItem extends StatelessWidget {
  const WhatsappCallsListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 3.w),
            child: ClipOval(
              child: Image.asset(
                'assets/image/download.png',
                height: 7.h,
                width: 7.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: DefaultText(
                        text: 'Maha Mohamed',
                        textColor: Colors.cyan,
                        weight: FontWeight.bold,
                        textSize: 14.sp,
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(top: 0.5.h),
                        child: DefaultText(
                          text: '12:00 AM',
                          textColor: floatingActionButtonColor,
                          textSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 21,
                        child: DefaultText(
                          text:
                          '01023985408',
                          textColor: textColor,
                          weight: FontWeight.bold,
                          textSize: 13.sp,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        flex: 21,
                          child: Icon(Icons.phone_enabled_outlined,size: 30,color: Colors.cyanAccent,))

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}