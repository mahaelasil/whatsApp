
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../views/whatsapp_calls_list_item.dart';

import '../../widgets/defult_divider.dart';

class WhatsappCallsScreen extends StatelessWidget {
  const WhatsappCallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: ListView.separated(
        itemBuilder: (context, index) => const WhatsappCallsListItem(),
        separatorBuilder: (context, index) => const DefaultDivider(),
        itemCount: 8,
      ),
    );
  }
}

