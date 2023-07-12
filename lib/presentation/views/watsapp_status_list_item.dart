
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled2/presentation/screen/whats_app/other_whatsapp_status_screen.dart';
import 'package:untitled2/presentation/screen/whats_app/whatsapp_status_screen.dart';

class WhatsappStatusListItem extends StatefulWidget {
  const WhatsappStatusListItem({Key? key}) : super(key: key);

  @override
  State<WhatsappStatusListItem> createState() => _WhatsappStatusListItemState();
}

class _WhatsappStatusListItemState extends State<WhatsappStatusListItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            WhatsappStatueScreen(
            ),
            Container(
              height: 33,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 13.w,),
                child: Text('Recent Updates',
                  style: TextStyle(fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            label('Recent updates'),
            OtherWhatsappStatusScreen(
              time: '01:27',
              imageName: 'assets/image/download.png',
              name: "Balsam Thore",
            ),
            OtherWhatsappStatusScreen(
              time: '02:30',
              imageName: 'assets/image/download (2).gif',
              name: "Basma omar",
            ),
            OtherWhatsappStatusScreen(
              time: '03:27',
              imageName: 'assets/image/images.gif',
              name: "may ali",
            ),
            OtherWhatsappStatusScreen(
              time: '05:00',
              imageName: 'assets/image/WhatsApp-GIF.webp',
              name: "sara ahmed",
            ),
            OtherWhatsappStatusScreen(
              time: '01:27',
              imageName: 'assets/image/download.png',
              name: "Balsam Thore",
            ),
            OtherWhatsappStatusScreen(
              time: '02:30',
              imageName: 'assets/image/download (2).gif',
              name: "Basma omar",
            ),
            OtherWhatsappStatusScreen(
              time: '03:27',
              imageName: 'assets/image/images.gif',
              name: "may ali",
            ),
            OtherWhatsappStatusScreen(
              time: '05:00',
              imageName: 'assets/image/WhatsApp-GIF.webp',
              name: "sara ahmed",
            ),
            label('void update'),
          ],
        ),
      ),
    );
  }
    Widget label(String labelName){
      return Container(
        height: 33,
        width: MediaQuery.of(context).size.width,
        color: Colors.amberAccent,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h,vertical: 13.w,),
        child: Text(labelName,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,

        ),
        ),
        ),
      );
    }

  }


