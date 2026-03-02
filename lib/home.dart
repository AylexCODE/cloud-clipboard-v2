import 'package:flutter/material.dart';
import 'package:onclip/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 8.0,
          children: [
            Text("O"),
            Text("Connection"),
            Text("Default"),
            Text("Connected"),
          ],
        ),
        shape: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1.0
          )
        ),
        actionsPadding: EdgeInsets.only(right: 8.0),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            color: const Color.fromARGB(255, 0, 0, 0),
            iconSize: 24,
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings()
                ),
              ),
            },
          ),
        ],
      ),
      key: scaffoldKey,
      body: Center(
        child: TextField(
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: 'Start Typing...',
            border: InputBorder.none,
          ),
        ),
      ),
      endDrawer: NavigationDrawer(
        header: Padding(
          padding: EdgeInsetsGeometry.all(8.0),
          child: Text("Select Connections"),
        ),
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: EdgeInsetsGeometry.fromLTRB(8.0, 0.0, 8.0, 0.0),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text("data")
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: EdgeInsetsGeometry.fromLTRB(8.0, 8.0, 8.0, 0.0),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text("data")
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {openDrawer();},
        tooltip: 'Add Connection',
        child: const Icon(Icons.add),
      ),
    );
  }
}
