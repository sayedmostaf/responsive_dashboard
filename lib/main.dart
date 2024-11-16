import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        return const ResponsiveDashBoard();
      },
    ),
  );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const DashBoardView(),
    );
  }
}
