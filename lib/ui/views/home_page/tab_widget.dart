import 'package:flutter/material.dart';
import 'package:material_flutter/ui/views/widget_page/app_bar_page/basic_appbar_page.dart';
import 'package:material_flutter/ui/views/widget_page/app_bar_page/sliver_appbar_page.dart';
import 'package:material_flutter/ui/widgets/helper_widgets.dart';

class TabWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Column(
            children: <Widget>[
                ExpansionTile(
                    title: HelperWidgets.getTitleExpansionTile('App Bar'),
                    children: <Widget>[
                        ListTile(
                            title: HelperWidgets.getTitleExpansionTile('Basic', withIcon: false),
                            onTap: () {
                                return Navigator.push(context, MaterialPageRoute(builder: (context) => BasicAppBarPage()));
                            },
                        ),
                        ListTile(
                            title: HelperWidgets.getTitleExpansionTile('Sliver App Bar', withIcon: false),
                            onTap: () {
                                return Navigator.push(context, MaterialPageRoute(builder: (context) => SliverAppBarPage()));
                            },
                        ),
                    ],
                ),
                ExpansionTile(
                    title: HelperWidgets.getTitleExpansionTile('Bottom Navigation'),
                ),
                ExpansionTile(
                    title: HelperWidgets.getTitleExpansionTile('ListView'),
                ),
                ExpansionTile(
                    title: HelperWidgets.getTitleExpansionTile('GridView'),
                ),
                ExpansionTile(
                    title: HelperWidgets.getTitleExpansionTile('Buttons'),
                ),
                ExpansionTile(
                    title: HelperWidgets.getTitleExpansionTile('Card'),
                ),
            ],
        );
    }
}