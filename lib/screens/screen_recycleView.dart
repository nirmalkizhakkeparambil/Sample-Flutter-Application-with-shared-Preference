import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class recycleView_screen extends StatelessWidget {
  const recycleView_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recycle View'),
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text("Person $index"),
                  subtitle: Text("message $index"),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8mNa3-aB2G1n1_Hc_ofePU6zILWAyxNkPspd2mQ9vdLFsXfiPngChRb-OsnY353SuxgY&usqp=CAU'),
                    backgroundColor: Colors.green,
                  ),
                  trailing: Text(" 1$index :00"),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 40)),
    );
  }
}
