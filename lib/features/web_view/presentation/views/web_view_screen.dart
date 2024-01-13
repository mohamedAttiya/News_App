import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
class WebViewScreen extends StatelessWidget {
  final String url;
  const WebViewScreen({super.key, required this.url});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:WebViewPlus
        (
        initialUrl:url,
      ),
    );
  }
}