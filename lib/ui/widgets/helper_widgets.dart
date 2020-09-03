import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelperWidgets {
    static Widget getTitleExpansionTile(String title, {IconData iconData=FontAwesomeIcons.bookmark, bool withIcon=true}) {
        return Row(
            children: (withIcon) ? <Widget>[
                FaIcon(
                    iconData,
                    size: 19,
                ),
                SizedBox(width: 20),
                Text(title),
            ] : <Widget>[
                SizedBox(width: 38),
                Text(title),
            ],
        );
    }
}