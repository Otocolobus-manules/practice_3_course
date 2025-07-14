import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:bloc/bloc.dart';

import 'package:practice_3_course/src/app.dart';
import 'package:practice_3_course/src/common/bloc/base_observer.dart';
import 'package:practice_3_course/src/theme/app_colors.dart';


void main() {
  Bloc.observer = const BaseObserver();
  runZonedGuarded(
      () => runApp(
            DevicePreview(
              enabled: !kReleaseMode,
              builder: (context) => const CoffeeShop(),
              backgroundColor: AppColors.background,
            ),
          ), (error, stack) {
    log(error.toString(), name: 'App Error', stackTrace: stack);
  });
}
