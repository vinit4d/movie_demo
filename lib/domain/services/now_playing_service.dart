abstract class NowPlayingService {
  Future<dynamic> getNowPlaying({
    required Map<String, dynamic> mapData,
    required String input,
  });
}
