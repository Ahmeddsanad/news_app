// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:news_app/services/provider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({
    super.key,
    required this.urlArticle,
    required this.title,
  });

  final String urlArticle;
  final String title;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  WebViewController? controller;
  bool _loading = true;

  @override
  void initState() {
    controller = WebViewController.fromPlatformCreationParams(
        const PlatformWebViewControllerCreationParams())
      ..setNavigationDelegate(NavigationDelegate(
          onPageFinished: (_) => setState(() {
                _loading = false;
              })))
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.urlArticle))
      ..enableZoom
      ..getScrollPosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.amber,
          ),
        ),
        titleSpacing: 0,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          WebViewWidget(
            controller: controller!,
          ),
          if (_loading)
            Container(
              color: themeChange.darkTheme ? Colors.grey[700] : Colors.white,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.amber,
                ),
              ),
            )
        ],
      ),
    );
  }
}
