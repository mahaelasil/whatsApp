import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../views/whatsapp_chats_list_item.dart';

import '../../widgets/defult_divider.dart';

class WhatsappChatsScreen extends StatelessWidget {
  const WhatsappChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: ListView.separated(
        itemBuilder: (context, index) => const WhatsappChatsListItem(),
        separatorBuilder: (context, index) => const DefaultDivider(),
        itemCount: 8,
      ),
    );
  }
}