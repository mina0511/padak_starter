import 'package:flutter/material.dart';

// 1-3. Grid 리스트 화면 (임포트)
import 'model/data/dummys_repository.dart';
import 'model/response/movies_response.dart';

class GridPage extends StatelessWidget {
  // 1-4. Grid 리스트 화면 (동적 데이터 추가)
  final List<Movie> movies = DummysRepository.loadDummyMovies();

  @override
  Widget build(BuildContext context) {
    // 1-4. Grid 리스트 화면 (GridView 구축)
    return GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (9 / 16),
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) => _buildGridItem(context, index: index),
    );
  }

// 1-4. Grid 리스트 화면 (Grid 아이템 화면 구축)
  Widget _buildGridItem(BuildContext context, {@required int index}) {
    Movie movie = movies[index];
    // 1-4. Grid 리스트 화면 (관람 등급 이미지 버튼 함수 생성)
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Image.network(
                  "https://www.mobifren.com/resource/img/common/ready.gif",
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text('12'),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          FittedBox(
            child: Text(
              movie.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
              '${movie.reservationGrade}위(${movie.userRating})/${movie.reservationGrade}%'),
          SizedBox(height: 8),
          Text('${movie.date}'),
        ],
      ),
    );
  }
}
