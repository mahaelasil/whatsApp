
import 'package:flutter/material.dart';

class WhatsappStatueScreen extends StatelessWidget {
  const WhatsappStatueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/image/download (2).gif'),
          ),
          Positioned(
            bottom: 0,
              right: 0,
              child:CircleAvatar(
                backgroundColor: Colors.cyan,
              radius: 10,
              child: Icon(Icons.add,
                size: 20,
              color: Colors.cyan,
              ),
              ),
          ),],
      ),
      title: Text('my status',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red),
      ),
      subtitle: Text(
        'tap to add status update',
        style: TextStyle(fontSize: 10,
        color: Colors.blue,
        ),
      ),


    );
  }
}
