import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_flutter/ui/views/networking/search_api_page/search_api_page.dart';
import 'package:material_flutter/ui/widgets/helper_widgets.dart';

class TabNetworking extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Column(
            children: <Widget>[
                ExpansionTile(
                    title: HelperWidgets.getTitleExpansionTile('Local Storage'),
                    children: <Widget>[
                        ListTile(
                            title: HelperWidgets.getTitleExpansionTile('Shared Preference', iconData: FontAwesomeIcons.database),
                        ),
                        ListTile(
                            title: HelperWidgets.getTitleExpansionTile('Hive', iconData: FontAwesomeIcons.database),
                        ),
                    ],
                ),
                ExpansionTile(
                    title: HelperWidgets.getTitleExpansionTile('Design Pattern'),
                    children: <Widget>[
                        ExpansionTile(
                            title: HelperWidgets.getTitleExpansionTile('Provider', iconData: FontAwesomeIcons.projectDiagram),
                        ),
                        ExpansionTile(
                            title: HelperWidgets.getTitleExpansionTile('Bloc', iconData: FontAwesomeIcons.projectDiagram),
                        ),
                        ExpansionTile(
                            title: HelperWidgets.getTitleExpansionTile('Cubit', iconData: FontAwesomeIcons.projectDiagram),
                        ),
                    ],
                ),
                ExpansionTile(
                    title: HelperWidgets.getTitleExpansionTile('Google'),
                    children: <Widget>[
                        ListTile(
                            title: HelperWidgets.getTitleExpansionTile('SigIn With Google', iconData: FontAwesomeIcons.signInAlt),
                        ),
                        ListTile(
                            title: HelperWidgets.getTitleExpansionTile('Firestore', iconData: FontAwesomeIcons.fire),
                        ),
                    ],
                ),
                ExpansionTile(
                    title: HelperWidgets.getTitleExpansionTile('Search With API'),
                    children: <Widget>[
                        ListTile(
                            title: HelperWidgets.getTitleExpansionTile('Search', withIcon: false),
                            onTap: () {
                                return Navigator.push(context, MaterialPageRoute(builder: (context) => SearchApiPage()));
                            },
                        ),
                    ],
                ),
            ],
        );
    }
}