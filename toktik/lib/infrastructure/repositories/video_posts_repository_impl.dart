import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

import '../../domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository{


  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({
    required this.videosDatasource
    });

  @override
  Future<List<VideoPost>> getFavoriteByPage(String userID) {
    
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
   return videosDatasource.getTrendingVideosByPage(page) ;
  }

}