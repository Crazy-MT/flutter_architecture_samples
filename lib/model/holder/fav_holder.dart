import 'dart:async';
import 'dart:convert';

import 'package:flutter_architecture_samples/common/streams.dart';
import 'package:flutter_architecture_samples/model/data/read_data.dart';
import 'package:flutter_architecture_samples/model/holder/shared_depository.dart';

class FavHolder<T> {
  static final FavHolder _holder = FavHolder._internal();

  factory FavHolder() => _holder;

  final List<ReadData> _cacheReads = List();
  final _favReadBroadcast = StreamController<List<ReadData>>();
  Stream<List<ReadData>> favReadStream;

  FavHolder._internal() {
    favReadStream = _favReadBroadcast.stream.asBroadcastStream();

    _init();
  }

  void _init() async {
    final readValue = SharedDepository().favReadData;
    if (readValue != null) {
      final list =
          (jsonDecode(readValue) as List).map((v) => ReadData.fromJson(v));
      _cacheReads.addAll(list);
    }
    streamAdd(_favReadBroadcast, _cacheReads);
  }

  /// 添加或取消收藏
  void autoFav(T t) async {
    if (t == null) return;

    if (t is ReadData) {
      if (isFavorite(t)) {
        _cacheReads.removeWhere((v) => v.url == t.url);
      } else {
        _cacheReads.add(t);
      }

      streamAdd(_favReadBroadcast, _cacheReads);
      await SharedDepository().setFavReadData(json.encode(_cacheReads));
    }
  }

  List<ReadData> get favReads => _cacheReads;

  /// 判断[t]是否被收藏
  bool isFavorite(T t) {
    if (t is ReadData) {
      return _cacheReads.any((v) => v.url == t.url);
    }
    return false;
  }

  void dispose() {
    _cacheReads.clear();
    _favReadBroadcast.close();
  }
}
