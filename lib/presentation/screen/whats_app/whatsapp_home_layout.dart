import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled2/presentation/screen/whats_app/whatsapp_calls_screen.dart';
import 'package:untitled2/presentation/screen/whats_app/whatsapp_chats_screen.dart';

import '../../styles/colors.dart';
import '../../views/watsapp_status_list_item.dart';
import '../../widgets/default-text.dart';

class WhatsappHomeLayout extends StatefulWidget {
  const WhatsappHomeLayout({Key? key}) : super(key: key);

  @override
  State<WhatsappHomeLayout> createState() => _WhatsappHomeLayoutState();
}

class _WhatsappHomeLayoutState extends State<WhatsappHomeLayout>
    with TickerProviderStateMixin {
  late TabController tabController;
  int SelectIndex = 0;
  @override
  void initState() {
    tabController = TabController(
      length: 4,
      initialIndex: 1,
      vsync: this,
    );
    tabController.addListener(() {
      setState(() {
        SelectIndex = tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) => [
            SliverAppBar(
              backgroundColor: barsColor,
              title: const DefaultText(
                text: 'WhatsApp',
                textColor: textColor,
              ),
              pinned: true,
              floating: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: textColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: textColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: textColor,
                  ),
                ),
              ],
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: floatingActionButtonColor,
                labelColor: floatingActionButtonColor,
                controller: tabController,
                unselectedLabelColor: textColor,
                tabs: [
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: const Tab(
                      child: Icon(Icons.groups),
                    ),
                  ),
                  Container(
                    width: 19.w,
                    alignment: AlignmentDirectional.center,
                    child: const Tab(
                      text: 'Chats',
                    ),
                  ),
                  Container(
                    width: 19.w,
                    alignment: AlignmentDirectional.center,
                    child: const Tab(
                      text: 'Status',
                    ),
                  ),
                  Container(
                    width: 19.w,
                    alignment: AlignmentDirectional.center,
                    child: const Tab(
                      text: 'Calls',
                    ),
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            controller: tabController,
            children: [
              FlutterLogo(),
              WhatsappChatsScreen(),
              WhatsappStatusListItem(),
              WhatsappCallsScreen(),
            ],
          ),
        ),
      ),
      floatingActionButton: Builder(
        builder: (context)
    {
      if(SelectIndex==1) {
        return FloatingActionButton(onPressed: () {},
          child:Icon(Icons.chat,color: Colors.black87,) ,
        );
      }
      else if (SelectIndex==2){

        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            FloatingActionButton(onPressed: (){},
              child: Icon(Icons.edit,color: Colors.black87,weight: 5.sp,) ,

            ),

            FloatingActionButton(onPressed: (){},
              child: Icon(Icons.camera_alt_outlined,color: Colors.black87,weight: 5.sp,) ,

            ),
          ],
        );
      }
      else{
        return FloatingActionButton(onPressed: (){},
        child: Icon(Icons.phone_enabled_outlined,color: Colors.black54,),);
      }

    }
      ),
    );
  }
  }
