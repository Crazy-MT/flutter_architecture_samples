import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_architecture_samples/common/streams.dart';
import 'package:flutter_architecture_samples/viewmodel/viewmodel.dart';

class AboutViewModel extends ViewModel {

  final updateResult = StreamController<bool>();

  @override
  void dispose() {
    updateResult.close();

    super.dispose();
  }
}

