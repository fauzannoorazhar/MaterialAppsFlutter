import 'package:flutter/material.dart';

class TabOther extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return ExpansionTile(
            title: Text('Other'),
            children: <Widget>[
                ListTile(
                    title: Text('data'),
                )
            ],
        );
    }
}