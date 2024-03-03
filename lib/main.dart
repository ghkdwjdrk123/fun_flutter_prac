import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Row(
              children: [
                Text('신흥1동', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
                Icon(CupertinoIcons.chevron_down, color: Colors.black),
              ],
            ),
            actions : [
              Icon(CupertinoIcons.search, color: Colors.black),
              Icon(null),
              Icon(CupertinoIcons.bars, color: Colors.black),
              Icon(null),
              Icon(CupertinoIcons.bell, color: Colors.black),
              Icon(null),
            ],
            backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
              children: [
                ListItem('이케부쿠로 니쿠게키죠에서 마셨던 산토리 더 프리미엄 몰츠 맥주'),
                ListItem('안녕하세요'),
                ListItem('롤 원딜 리스트'),
                ListItem('이즈리얼'),
                ListItem('카이사'),
                ListItem('바루스'),
                ListItem('케이틀린'),
                ListItem('세나'),
                ListItem('스몰더'),
                ListItem('트위스티드 페이트?'),
                ListItem('칼리스타'),
                ListItem('아펠리오스'),
                ListItem('징크스'),
                ListItem('코그모'),
                ListItem('시비르'),
                ListItem('자야'),
              ],
          )
        ),
      )
    );
  }
}

class ListItem extends StatelessWidget {
  // const ListItem({Key? key}) : super(key: key);

  final String titleText;

  ListItem(this.titleText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/beer.jpeg'),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$titleText', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15)),
                    Text('수정구 신흥1동 - 끌올 10분 전', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    Text('210,000원'),
                    Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(CupertinoIcons.heart, color: Colors.grey),
                            Text('4'),
                          ],
                        )
                    )
                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}
