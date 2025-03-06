import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:quick_link/app.dart';

void main(){
  runApp(
      DevicePreview(
          enabled: !kReleaseMode,
        // enabled: false,
          builder: (context)=>QuickLink())
  );
}