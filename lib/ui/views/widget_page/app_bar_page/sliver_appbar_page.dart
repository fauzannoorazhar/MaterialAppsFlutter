import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
    @override
    _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: DefaultTabController(
                length: 2,
                child: NestedScrollView(
                    headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                        return <Widget>[
                            SliverAppBar(
                                expandedHeight: 200.0,
                                floating: true,
                                pinned: true,
                                flexibleSpace: FlexibleSpaceBar(
                                    centerTitle: false,
                                    title: Text('Sliver AppBar'),
                                    background: Image.network(
                                        "https://cdn.pixabay.com/photo/2016/03/28/12/35/cat-1285634_960_720.png",
                                        fit: BoxFit.cover,
                                    ),
                                )
                            ),
                            SliverPersistentHeader(
                                delegate: _SliverAppBarDelegate(
                                    Column(
                                        children: <Widget>[
                                            Container(
                                                alignment: Alignment.bottomRight,
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                    'img souce : https://pixabay.com/',
                                                )
                                            )
                                        ],
                                    ),
                                ),
                                pinned: true,
                            ),
                        ];
                    },
                    body: Center(
                        child: Text('Content Body Here'),
                    ),
                ),
            )
        );
    }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
    final Widget widget;
    _SliverAppBarDelegate(this.widget);

    @override
    double get minExtent => 40;
    @override
    double get maxExtent => 40;

    @override
    Widget build(
        BuildContext context, double shrinkOffset, bool overlapsContent) {
        return Container(
            child: widget,
        );
    }

    @override
    bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
        return false;
  }
}