import 'package:flutter/material.dart';

class BasicAppBarPage extends StatefulWidget {
    @override
    _BasicAppBarPageState createState() => _BasicAppBarPageState();
}

class _BasicAppBarPageState extends State<BasicAppBarPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('App Bar'),
            ),
            drawer: Drawer(),
            body: getBody(),
        );
    }

    Widget getBody() {
        return Center(
            child: Text('fauzan'),
        );
    }
}