import "package:flutter/material.dart";

// 1-2. 탭 화면 (각 화면 import)
import 'grid_page.dart';
import 'list_page.dart';

// 1-2. 탭 화면 (Stateless -> Stateful)
class MainPage extends StatefulWidget {
  // 1-2. 탭 화면 (_selectedTabIndex 변수 옮김)
  // 1-2. 탭 화면 (탭 인덱스 설정)

  // 1-2. 탭 화면 (createState 함수 추가)
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
  // 1-2. 탭 화면 (build() 함수를 _MainState로 옮김)

}
// 1-2. 탭 화면 (State 구현)

class _MainPageState extends State<MainPage> {
  int _selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    const color = const Color(0xff001E54);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          // 1-1. 상단화면 (제목 수정)
          title: Row(children: [
            Image(image: AssetImage('assets/UNIST.gif')),
            SizedBox(width: 10),
            Text(
              'Movie review',
              style: TextStyle(fontSize: 25, fontFamily: 'Junbum'),
            ),
          ]),
          // 1-1. 상단화면 (좌측 버튼 추가)
          //leading: Icon(Icons.sort),

          // 1-1. 상단화면 (우측 팝업 버튼 및 이벤트 추가)
          actions: <Widget>[
            PopupMenuButton<int>(
              icon: Icon(Icons.sort),
              onSelected: (value) {
                if (value == 0)
                  print("예매율순");
                else if (value == 1)
                  print("큐레이션");
                else
                  print("최신순");
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(value: 0, child: Text("예매율순")),
                  PopupMenuItem(value: 1, child: Text("큐레이션")),
                  PopupMenuItem(value: 2, child: Text("최신순")),
                ];
              },
            )
          ],
        ),
        // 1-2. 탭 화면 (List, Grid Widget 연동)
        body: _buildPage(_selectedTabIndex),

        // 1-2. 탭 화면 (bottomNavigationBar 추가)

        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text('List'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_on),
              title: Text('Grid'),
            ),
          ],
          currentIndex: _selectedTabIndex,
          onTap: (index) {
            setState(() {
              _selectedTabIndex = index;
              print("$_selectedTabIndex Tab Clicked");
            });
          },
        ));
  }
}

// 1-2. 탭 화면 (List, Grid Widget 반환)
Widget _buildPage(index) {
  if (index == 0)
    return ListPage();
  else
    return GridPage();
}
