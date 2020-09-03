import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_flutter/ui/views/home_page/tab_networking.dart';
import 'package:material_flutter/ui/views/home_page/tab_other.dart';
import 'package:material_flutter/ui/views/home_page/tab_widget.dart';

class Home extends StatefulWidget {
    Home({Key key}) : super(key: key);

    @override
    _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
    TabController _tabController;

    @override
    void initState() { 
        _tabController = new TabController(length: 3, vsync: this);
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return DefaultTabController(
            length: 3,
            child: Scaffold(
                drawer: Drawer(),
                appBar: AppBar(
                    title: Text('Material Flutter'),
                    bottom: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        controller: this._tabController,
                        isScrollable: true,
                        onTap: (value) {
                            setState(() {
                                this._tabController.index = value;
                            });
                        },
                        tabs: <Widget>[
                            tabBarName('Widget', FontAwesomeIcons.briefcase),
                            tabBarName('Networking', FontAwesomeIcons.broadcastTower),
                            tabBarName('Others', FontAwesomeIcons.ellipsisH)
                        ],
                    ),
                ),
                body: getBody(),
            )
        );
    }

    Widget tabBarName(String title, IconData iconData) {
        return Container(
            padding: EdgeInsets.all(10),
            child: Row(
                children: <Widget>[
                    FaIcon(
                        iconData,
                        size: 16,
                    ),
                    SizedBox(width: 10),
                    Text(
                        title,
                    ),
                ],
            ),
        );
    }

    Widget getBody() {
        return SingleChildScrollView(
            child: Container(
                child: getContentTab()
            )
        );
    }

    getContentTab() {
        if (this._tabController.index == 0) {
            return TabWidget();
        }

        if (this._tabController.index == 1) {
            return TabNetworking();
        }

        if (this._tabController.index == 2) {
            return TabOther();
        }
    }
}