import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List & Grid View Switcher'),
        actions: [
          Switch(
            value: _isGridView,
            onChanged: (value) {
              setState(() {
                _isGridView = value;
              });
            },
          ),
        ],
      ),
      body: _isGridView ? buildGridView() : buildListView(),
    );
  }

  Widget buildListView() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item $index'),
        );
      },
    );
  }

  Widget buildGridView() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return GridTile(
          child: Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text('Item $index'),
            ),
          ),
        );
      },
    );
  }
}
