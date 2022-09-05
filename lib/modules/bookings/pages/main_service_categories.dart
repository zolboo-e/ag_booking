//
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
//
import '/modules/bookings/models/index.dart';
import '/modules/bookings/providers/index.dart';
//
import 'sub_service_categories.dart';

class MainServiceCategoriesPage extends StatelessWidget {
  static const routeName = '/main_service_categories';

  const MainServiceCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Service Categories'),
      ),
      body: _MainServiceCategoriesPageView(),
    );
  }
}

class _MainServiceCategoriesPageView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(serviceCategoriesProvider);

    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];

        return _MainServiceCategoryListItem(category);
      },
    );
  }
}

class _MainServiceCategoryListItem extends StatelessWidget {
  const _MainServiceCategoryListItem(this.category);

  final ServiceCategory category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.cleaning_services),
        trailing: const Icon(Icons.chevron_right),
        title: Text(
          category.name,
          style: const TextStyle(fontSize: 20),
        ),
        onTap: () {
          context.go(
              '${MainServiceCategoriesPage.routeName}${SubServiceCategoriesPage.routeName}/${category.id}');
          // Navigator.pushNamed(
          //   context,
          //   SubServiceCategoriesPage.routeName,
          //   arguments: SubServiceCategoriesPageArguments(category.id),
          // );
        },
      ),
    );
  }
}

// import 'dart:collection';
// // import 'dart:convert';
// import 'dart:io';
// // import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// // import 'package:path_provider/path_provider.dart';
// import 'package:url_launcher/url_launcher.dart';

// class MainServiceCategoriesPage extends StatefulWidget {
//   static const routeName = '/main_service_categories';

//   const MainServiceCategoriesPage({super.key});

//   @override
//   MainServiceCategoriesPageState createState() =>
//       MainServiceCategoriesPageState();
// }

// class MainServiceCategoriesPageState extends State<MainServiceCategoriesPage> {
//   final GlobalKey webViewKey = GlobalKey();

//   InAppWebViewController? webViewController;
//   InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
//       crossPlatform: InAppWebViewOptions(
//         useShouldOverrideUrlLoading: true,
//         mediaPlaybackRequiresUserGesture: false,
//         userAgent: 'webview',
//       ),
//       android: AndroidInAppWebViewOptions(
//         useHybridComposition: true,
//       ),
//       ios: IOSInAppWebViewOptions(
//         allowsInlineMediaPlayback: true,
//       ));

//   late PullToRefreshController pullToRefreshController;
//   late ContextMenu contextMenu;
//   String url = '';
//   double progress = 0;
//   final urlController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();

//     contextMenu = ContextMenu(
//         menuItems: [
//           ContextMenuItem(
//               androidId: 1,
//               iosId: '1',
//               title: 'Special',
//               action: () async {
//                 print('Menu item Special clicked!');
//                 print(await webViewController?.getSelectedText());
//                 await webViewController?.clearFocus();
//               })
//         ],
//         options: ContextMenuOptions(hideDefaultSystemContextMenuItems: false),
//         onCreateContextMenu: (hitTestResult) async {
//           print('onCreateContextMenu');
//           print(hitTestResult.extra);
//           print(await webViewController?.getSelectedText());
//         },
//         onHideContextMenu: () {
//           print('onHideContextMenu');
//         },
//         onContextMenuActionItemClicked: (contextMenuItemClicked) async {
//           var id = (Platform.isAndroid)
//               ? contextMenuItemClicked.androidId
//               : contextMenuItemClicked.iosId;
//           print('onContextMenuActionItemClicked: ' +
//               id.toString() +
//               ' ' +
//               contextMenuItemClicked.title);
//         });

//     pullToRefreshController = PullToRefreshController(
//       options: PullToRefreshOptions(
//         color: Colors.blue,
//       ),
//       onRefresh: () async {
//         if (Platform.isAndroid) {
//           webViewController?.reload();
//         } else if (Platform.isIOS) {
//           webViewController?.loadUrl(
//               urlRequest: URLRequest(url: await webViewController?.getUrl()));
//         }
//       },
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('InAppWebView')),
//         body: SafeArea(
//             child: Column(children: <Widget>[
//           TextField(
//             decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
//             controller: urlController,
//             keyboardType: TextInputType.url,
//             onSubmitted: (value) {
//               var url = Uri.parse(value);
//               if (url.scheme.isEmpty) {
//                 url = Uri.parse('https://www.google.com/search?q=' + value);
//               }
//               webViewController?.loadUrl(urlRequest: URLRequest(url: url));
//             },
//           ),
//           Expanded(
//             child: Stack(
//               children: [
//                 InAppWebView(
//                   key: webViewKey,
//                   // contextMenu: contextMenu,
//                   initialUrlRequest:
//                       URLRequest(url: Uri.parse('http://192.168.1.40:3000/ja')),
//                   // initialFile: 'assets/index.html',
//                   initialUserScripts: UnmodifiableListView<UserScript>([]),
//                   initialOptions: options,
//                   pullToRefreshController: pullToRefreshController,
//                   onWebViewCreated: (controller) {
//                     webViewController = controller;
//                   },
//                   onLoadStart: (controller, url) {
//                     setState(() {
//                       this.url = url.toString();
//                       urlController.text = this.url;
//                     });
//                   },
//                   androidOnPermissionRequest:
//                       (controller, origin, resources) async {
//                     return PermissionRequestResponse(
//                         resources: resources,
//                         action: PermissionRequestResponseAction.GRANT);
//                   },
//                   shouldOverrideUrlLoading:
//                       (controller, navigationAction) async {
//                     var uri = navigationAction.request.url!;

//                     if (![
//                       'http',
//                       'https',
//                       'file',
//                       'chrome',
//                       'data',
//                       'javascript',
//                       'about'
//                     ].contains(uri.scheme)) {
//                       if (await canLaunchUrl(Uri.dataFromString(url))) {
//                         // Launch the App
//                         await launchUrl(Uri.dataFromString(url));
//                         // and cancel the request
//                         return NavigationActionPolicy.CANCEL;
//                       }
//                     }

//                     return NavigationActionPolicy.ALLOW;
//                   },
//                   onLoadStop: (controller, url) async {
//                     pullToRefreshController.endRefreshing();
//                     setState(() {
//                       this.url = url.toString();
//                       urlController.text = this.url;
//                     });
//                   },
//                   onLoadError: (controller, url, code, message) {
//                     pullToRefreshController.endRefreshing();
//                   },
//                   onProgressChanged: (controller, progress) {
//                     if (progress == 100) {
//                       pullToRefreshController.endRefreshing();
//                     }
//                     setState(() {
//                       this.progress = progress / 100;
//                       urlController.text = this.url;
//                     });
//                   },
//                   onUpdateVisitedHistory: (controller, url, androidIsReload) {
//                     setState(() {
//                       this.url = url.toString();
//                       urlController.text = this.url;
//                     });
//                   },
//                   onConsoleMessage: (controller, consoleMessage) {
//                     print(consoleMessage);
//                   },
//                 ),
//                 progress < 1.0
//                     ? LinearProgressIndicator(value: progress)
//                     : Container(),
//               ],
//             ),
//           ),
//           ButtonBar(
//             alignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 child: Icon(Icons.arrow_back),
//                 onPressed: () {
//                   webViewController?.goBack();
//                 },
//               ),
//               ElevatedButton(
//                 child: Icon(Icons.arrow_forward),
//                 onPressed: () {
//                   webViewController?.goForward();
//                 },
//               ),
//               ElevatedButton(
//                 child: Icon(Icons.refresh),
//                 onPressed: () {
//                   webViewController?.reload();
//                 },
//               ),
//             ],
//           ),
//         ])));
//   }
// }
