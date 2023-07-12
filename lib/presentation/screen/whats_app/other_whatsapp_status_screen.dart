import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OtherWhatsappStatusScreen extends StatelessWidget {

  const OtherWhatsappStatusScreen(
      {Key? key,
      required this.name,
      required this.time,
      required this.imageName,
        })
      : super(key: key);
  final String name;
  final String time;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 26,
        backgroundImage: AssetImage(imageName),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
          fontSize: 12.sp,
        ),
      ),
      subtitle: Text(
        'Today at ,$time',
        style: TextStyle(
          fontSize: 14,
          color: Colors.cyanAccent,
        ),
      ),
    );
  }
}
