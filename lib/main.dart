import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/views/dashboard_view.dart';
import 'package:dashboard/widgets/adaptive_layout.dart';
import 'package:dashboard/widgets/mobile_layout.dart';
import 'package:dashboard/widgets/tablet_layout.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) => 
      const Dashboard()));
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: AdaptiveLayout(
        mobileLayout: (context) => const Mobilelayout(),
        tabletLayout: (context) => const Tabletview(),
        desktopLayout: (context) => const Desktopview(),
      ),
    );
  }
}
