import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myDataList = [
      {
        "name": "hsjsn",
        "dp":
            "https://images.pexels.com/photos/1580271/pexels-photo-1580271.jpeg?auto=compress&cs=tinysrgb&w=400",
        "bg":
            "https://images.pexels.com/photos/906150/pexels-photo-906150.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "amanda",
        "dp":
            "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=400",
        "bg":
            "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "michael",
        "dp":
            "https://images.pexels.com/photos/1043479/pexels-photo-1043479.jpeg?auto=compress&cs=tinysrgb&w=400",
        "bg":
            "https://images.pexels.com/photos/66874/pexels-photo-66874.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "sophia",
        "dp":
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=400",
        "bg":
            "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "daniel",
        "dp":
            "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=400",
        "bg":
            "https://images.pexels.com/photos/248797/pexels-photo-248797.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      }
    ];

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: PageView.builder(
          itemBuilder: (context, index) => Container(
            // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(myDataList[index]["bg"]))),
            child: Column(
              children: [
                Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(myDataList[index]["dp"]),
                  ),
                  title: Text(
                    "username",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "sponsered",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.white,
                            width: 1.5,
                          ),
                        ),
                        child: Text(
                          "send massage",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                      size: 40,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
