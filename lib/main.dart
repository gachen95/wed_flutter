import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:wed_flutter/routes/app_pages.dart';

import 'common/utils/utils.dart';
import 'common/values/colors.dart';
import 'global.dart';

Future<void> main() async {
  await initServices();

  runApp(const MyApp());
}

Future<void> initServices() async {
  print('starting services ...');
  //await Get.putAsync(() => GlobalConfigService().init());
  await Global.init();
  print('All services started...');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,

        // 日志
        enableLog: true,
        logWriterCallback: Logger.write,

        // 路由
        getPages: AppPages.routes,

        // 启动页面
        initialRoute: AppPages.INITIAL,

        // 主题
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              color: AppColors.AppBar,
            )),
      ),
    );
  }
}
