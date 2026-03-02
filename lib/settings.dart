import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _Settings();
}
class _Settings extends State<Settings> {
  String username = "";

  void saveAccount(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(height: 12),
              TextField(
                controller: null,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Endpoint"
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                child: Text("TEST ENDPOINT"),
                onPressed: () {},
              ),
              SizedBox(height: 6),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsGeometry.only(bottom: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton.extended(
                        icon: Icon(Icons.save),
                        label: Text(
                          "Save",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        onPressed: (){
                          saveAccount();
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Settings Saved"),
                              action: SnackBarAction(
                                label: "OK",
                                onPressed: (){}
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}