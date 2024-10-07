/// This [QuicOrderAlert] class is used to showing [AlertDialog] box for logout

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotless/locator.dart';
import 'package:spotless/store/cart_store/cart_store.dart';
import 'package:spotless/store/notification_store/notification_store.dart';

import '../../app_localizations.dart';

import '../theme/theme.dart';

class QuicOrderAlert extends StatefulWidget {
  const QuicOrderAlert({
    Key? key,
  }) : super(key: key);

  @override
  _QuicOrderAlertState createState() => _QuicOrderAlertState();
}

class _QuicOrderAlertState extends State<QuicOrderAlert> {
 
  final NotificationStore _notificationStore = locator.get<NotificationStore>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      content: Container(
          height: 200.h,
          child: Scaffold(
              appBar: AppBar(
                leading: Container(),
                elevation: 0,
                titleSpacing: 0,
                leadingWidth: 0,
                title: Container(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    height: 61.h,
                    color: MainTheme.blueTypeOneColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text(
                          AppTranslations.of(context)!
                              .text('Order Alert', 'Order Alert'),
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: MainTheme.whiteTypeColor,
                              fontWeight: FontWeight.w900),
                        )),
                      ],
                    )),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.pushNamed(context, '/checkout_page', arguments: true,);
                          },
                          height: 40.h,
                          minWidth: 110.w,
                          color: MainTheme.blueTypeOneColor,
                          child: Text(
                            AppTranslations.of(context)!
                                .text('ORDER DETAILS', 'QUICKORDER'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                              color: MainTheme.whiteTypeColor,
                            ),
                          ),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.pushNamed(context, '/all_service_page', arguments: true);
                          },
                          height: 40.h,
                          minWidth: 110.w,
                          color: MainTheme.greyTypeColor,
                          child: Text(
                            AppTranslations.of(context)!
                                .text('ORDER DETAILS','NORMALORDER'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                              color: MainTheme.whiteTypeColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
