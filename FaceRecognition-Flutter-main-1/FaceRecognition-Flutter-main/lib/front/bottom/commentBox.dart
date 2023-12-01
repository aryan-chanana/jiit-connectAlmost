import 'package:comment_box/comment/comment.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


var commentNoFetched;
var commentsFetched = 0;
var maxCommentsAvailable;
final user = FirebaseAuth.instance.currentUser!;

// ignore: camel_case_types
class commentBox extends StatefulWidget {
  const commentBox({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _commentBoxState createState() => _commentBoxState();
}

// ignore: camel_case_types
class _commentBoxState extends State<commentBox> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();

  // for database
  final postController = TextEditingController();
  bool loading = false;
  DatabaseReference databaseRef = FirebaseDatabase.instance.ref('Comments');
  DatabaseReference ref = FirebaseDatabase.instance.ref('Comments');
  DatabaseReference CommentNoDatabase = FirebaseDatabase.instance.ref('CommentNo');


  List filedata = [
    {
      'date': '2023-09-22 08:30:00',
      'name': 'Aryan Chanana',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Kya hi'
    },
    {
      'date': '2023-01-18 13:43:00',
      'name': 'Nitika Sobti',
      'pic': 'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_1280.jpg',
      'message': 'Mai best'
    },
    {
      'date': '2022-12-29 19:42:39',
      'name': 'Anshul',
      'pic': 'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_1280.jpg',
      'message': 'Towel kho gyi'
    },
    {
      'date': '2023-03-15 13:24:10',
      'name': 'Arya Bagla',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Yaaaaaarrrr'
    },
  ];
  // List fetched_data = [];


  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              subtitle: Text(data[i]['message'], style: const TextStyle( color: Colors.white)),
              trailing: Text(data[i]['date'], style: const TextStyle(fontSize: 10, color: Colors.white)),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    Stream<DatabaseEvent> comments = CommentNoDatabase.onValue;
    comments.listen((DatabaseEvent event) {
      commentNoFetched = event.snapshot.value;
      commentNoFetched++;
    });
    maxCommentsAvailable = commentNoFetched;

    Stream<DatabaseEvent> stream = ref.onValue;
    stream.listen((DatabaseEvent event) {
      for (var i = commentsFetched+1; i < maxCommentsAvailable-2; i++) {
        if (event.snapshot.child('$i').value != null) {
          filedata.insert(0, event.snapshot.child('$i').value);
          commentsFetched++;
        }
      }

      for (var i = 0; i < filedata.length; i++) {
        print(filedata[i]);
      }
    });

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Community", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/HD-wallpaper-black-pattern-black-design-modern-thumbnail.jpg"),
              fit: BoxFit.cover,
            )
        ),
        child: CommentBox(
          userImage: CommentBox.commentImageParser(imageURLorPath: user.photoURL!),
          labelText: 'Write a comment...',
          errorText: 'Comment cannot be blank',
          withBorder: false,
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              // print(commentController.text);
              final currentTime = DateTime.now();
              setState(() {
                var value = {
                  'date': currentTime.toString(),
                  'name': user.displayName!,
                  'pic': user.photoURL!,
                  'message': commentController.text
                };
                controller: postController;
              });

              FocusScope.of(context).unfocus();
              databaseRef.child((commentNoFetched-1).toString()).set({
                'name': user.displayName!,
                'pic': user.photoURL!,
                'message': commentController.text,
                'date': currentTime.toString()
              });

              // for (var i = 1; i < 5; i++) {
              //   DatabaseReference ref = FirebaseDatabase.instance.ref("Comments/$i");
              //   DatabaseReference child = ref.child("name");
              //   print(child);
              // }

              // // for sending comment count to firebase so that it doesn't reset everytime app restarts
              CommentNoDatabase.set(commentNoFetched);
              // CommentNoDatabase.update("abc", 100);


              print(commentNoFetched);
              commentNoFetched++;
              maxCommentsAvailable++;
              commentController.clear();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          sendWidget: const Icon(Icons.send_sharp, size: 30, color: Colors.white),
          child: commentChild(filedata),
        ),
      ),
    );
  }
}