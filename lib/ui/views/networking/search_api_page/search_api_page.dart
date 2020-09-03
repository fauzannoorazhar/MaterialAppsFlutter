import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:material_flutter/models/newsapi.dart';
import 'package:http/http.dart' as http;

class SearchApiPage extends StatefulWidget {
    @override
    _SearchApiPageState createState() => _SearchApiPageState();
}

class _SearchApiPageState extends State<SearchApiPage> {
    TextEditingController textEditingController = new TextEditingController();
    List<NewsAPI> listNews = new List<NewsAPI>();
    bool loading = false;

    void searchListNews() async {
        Timer(const Duration(milliseconds: 900), () async {
            if (this.textEditingController.text.isNotEmpty) {
                StringBuffer sb = new StringBuffer();
                sb.write('https://newsapi.org/v2/everything?qInTitle=');
                sb.write(this.textEditingController.text);
                sb.write('&apiKey=0bbd42f0bf934ed2b44f7fc07b186253');
                String url = sb.toString();

                var response = await http.get(url);

                if (response.statusCode == 200) {
                    var jsonBody = json.decode(response.body);

                    if (jsonBody['status'] == 'ok') {
                        List jsonList  = jsonBody['articles'];
                        listNews = jsonList.map((dataJson) => NewsAPI.fromJson(dataJson)).toList();

                        setState(() {
                            this.loading = false;
                        });
                    }
                }

            } else {
                setState(() {
                    this.loading = false;
                    this.listNews.clear();
                });
            }
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Example Search With API'),
            ),
            body: getBody(),
        );
    }

    Widget getBody() {
        return Container(
            child: Column(
                children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                            controller: this.textEditingController,
                            onChanged: (value) {
                                setState(() {
                                    this.loading = true;
                                });
                                this.searchListNews();
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter To Search',
                                labelText: 'Filter By Title'
                            ), 
                        ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                        child: (this.loading) ? Center(
                            child: CircularProgressIndicator(),
                        ) : (this.listNews.length == 0) ? Center(
                            child: Text('News not found'),
                        ) : ListView.separated(
                            separatorBuilder: (context, index) {
                                return Divider();
                            },
                            itemCount: this.listNews.length,
                            itemBuilder: (BuildContext context, int index) {
                                NewsAPI newsAPI = this.listNews[index];

                                return ListTile(
                                    title: Text(newsAPI.title ?? '-'),
                                );
                            },
                        )
                    ) 
                ],
            )
        );
    }
}