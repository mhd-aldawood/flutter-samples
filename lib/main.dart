import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("AppBar"),
        centerTitle: true,
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              ninjaLevel++;
            });
          }
          ,child: Icon(Icons.add),
        backgroundColor: Colors.amberAccent[200],),

      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/chunli.jpg'),
                radius: 40,
              ),
            ),
            Divider(height: 60,color: Colors.grey[800],),
            Text(
              "Name",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              "Chun-Li",
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Current Ninja Level",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              "$ninjaLevel",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(width: 10),
                Text(
                  "ChunLi@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


