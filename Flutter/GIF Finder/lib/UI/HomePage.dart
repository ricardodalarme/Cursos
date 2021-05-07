import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:share/share.dart';
import 'GifPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String search ;
  int offset = 0;

  Future<Map> getGifs() async {
    http.Response response;

    if (search == null)
      response = await http.get(
          "https://api.giphy.com/v1/gifs/trending?api_key=74uvOwFUcCshamWFmWdg1tBY1dyVEIcp&limit=25&rating=g");
    else
      response = await http.get(
          "https://api.giphy.com/v1/gifs/search?api_key=74uvOwFUcCshamWFmWdg1tBY1dyVEIcp&q=$search&limit=25&offset=$offset&rating=g&lang=en");

    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();

    getGifs().then((map) {
      print(map);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.network(
              "https://developers.giphy.com/branch/master/static/header-logo-8974b8ae658f704a5b48a2d039b8ad93.gif"),
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                    labelText: "Pesquise aqui",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder()),
                onSubmitted: (text) {
                  setState(() {
                    search = text;
                  });
                },
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: getGifs(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                    case ConnectionState.none:
                      return Container(
                        width: 200,
                        height: 200,
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                          strokeWidth: 5,
                        ),
                      );
                    default:
                      if (snapshot.hasError) return Container();
                      return createGifTable(context, snapshot);
                  }
                },
              ),
            )
          ],
        ));
  }

  int getCount(List list) {
    return search == null ? list.length : list.length + 1;
  }

  Widget createGifTable(BuildContext context, AsyncSnapshot snapshot) {
    return GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: getCount(snapshot.data["data"]),
        itemBuilder: (context, index) {
          if (search == null || index < snapshot.data["data"].length)
            return GestureDetector(
              child: Image.network(
                snapshot.data["data"][index]["images"]["fixed_height"]["url"],
                height: 300,
                fit: BoxFit.cover,
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>GifPage(
                    snapshot.data["data"][index]
                  )
                ));
              },
              onLongPress: (){
                Share.share(snapshot.data["data"][index]["images"]["fixed_height"]["url"]);
              },
            );
          return Container(
            child: GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add, color: Colors.white, size: 70),
                  Text(
                    "Carregar mais...",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
              onTap: () {
                setState(() {
                  offset += 25;
                });
              },
            ),
          );
        });
  }
}
