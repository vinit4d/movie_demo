import '../../domain/services/now_playing_service.dart';

import '../dto/now_playing/now_playing_dto.dart';

import '../keys/network_utils.dart';
import '../keys/remote_keys.dart';

class NowPlayingRemoteService extends NowPlayingService {
  var headerNew = {'Content-Type': 'application/json'};

  @override
  Future getNowPlaying({
    required Map<String, dynamic> mapData,
    required String input,
  }) async {
    try {
      final url = Uri.https(
        RemoteKeys.baseURL,
        "${RemoteKeys.path}$input",
        mapData,
      );

      var res = await NetworkUtils.get(url, headers: headerNew);
      // if (res.) {
      return NowPlayingDto.fromJson(res);
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
