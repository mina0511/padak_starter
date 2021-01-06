import 'package:flutter/material.dart';

// 1-3. 리스트 화면 (임포트)
class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1-3. 리스트 화면 (동적 데이터 추가)

    // 1-3. 리스트 화면 (초기 리스트 구현)
    return ListView(children: <Widget>[
      Container(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
                'https://padakpadak.s3.ap-northeast-2.amazonaws.com/image/1.jpg',
                height: 120),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '신과함께-죄와 벌',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text("12")
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text('평점 : 139'),
                      SizedBox(width: 10),
                      Text('예매순위 : 1'),
                      SizedBox(width: 10),
                      Text('예매율 : 35.5')
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('개봉일: 2017-12-20')
                ],
              ),
            )
          ],
        ),
      ),
      Container(),
      Container(),
      Container()
    ]);
  } // 1-3. 리스트 화면 (고정 더미 데이터)

// 1-3. 리스트 화면 (동적 데이터 호출1)

// 1-3. 리스트 화면 (관람 등급 이미지 버튼 함수 생성)
}
