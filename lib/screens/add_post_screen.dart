import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/utils/colors.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: IconButton(
    //     onPressed: () {},
    //   icon: Icon(Icons.upload),
    // ),
//);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mobileBackgroundColor,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Post to'),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'post',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ))
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1657299141942-3dab1b224686?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Write a caption...',
                        border: InputBorder.none),
                    maxLines: 8,
                  ),
                ),
                SizedBox(
                  height: 45,
                  width: 45,
                  child: AspectRatio(
                    aspectRatio: 487 / 451,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1657299141942-3dab1b224686?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                            fit: BoxFit.fill,
                            alignment: FractionalOffset.topCenter),
                      ),
                    ),
                  ),
                ),
                const Divider(),
              ],
            ),
          ],
        ));
  }
}
