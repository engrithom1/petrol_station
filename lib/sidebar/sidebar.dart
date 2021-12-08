import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petrol_station/config/palette.dart';
import 'package:petrol_station/sidebar/sidebar_submenu.dart';
import 'package:rxdart/rxdart.dart';
import '../navigation_bloc/naviagtion_bloc.dart';
import '../sidebar/sidebar_menu.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SideBar extends StatefulWidget {
  //const SideBar({ Key? key }) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  AnimationController _animationController;
  StreamController<bool> isSidebarOpenedStreamController;
  Stream<bool> isSidebarOpenedStream;
  StreamSink<bool> isSidebarOpenedSink;

  final bool isSidebarOpened = true;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final _animationCompleted = animationStatus == AnimationStatus.completed;

    if (_animationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
        initialData: false,
        stream: isSidebarOpenedStream,
        builder: (context, isSideBarOpenedAsync) {
          return AnimatedPositioned(
            duration: _animationDuration,
            top: 0,
            bottom: 0,
            left: isSideBarOpenedAsync.data ? 0 : -screenwidth,
            right: isSideBarOpenedAsync.data ? 0 : screenwidth - 45,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    color: Palette.mainGreen,
                    child: ListView(children: [
                      SizedBox(height: 30.h),
                      ListTile(
                        title: Text(
                          'Bob rich',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          'engrithom1@gmail.com',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                            size: 30.sp,
                          ),
                          radius: 30.sp,
                        ),
                      ),
                      Divider(
                        height: 20.h,
                        thickness: 2,
                        color: Colors.white.withOpacity(0.4),
                        indent: 16.w,
                        endIndent: 16.w,
                      ),
                      MenuBarItem(
                        icon: MdiIcons.home,
                        title: "Dashbord",
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.DashbordClickedEvent);
                        },
                      ),
                      MenuBarItem(
                        icon: MdiIcons.calculator,
                        title: "Sales",
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.SalesClickedEvent);
                        },
                      ),
                      MenuBarItem(
                        icon: MdiIcons.calendarCheck,
                        title: "Receiving",
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.ReceivingClickedEvent);
                        },
                      ),
                      MenuBarItem(
                        icon: MdiIcons.battery70,
                        title: "Inventory",
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.InventoryClickedEvent);
                        },
                      ),
                      MenuBarItem(
                        icon: MdiIcons.accountGroup,
                        title: "Debtors & Creditors",
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                        child: Column(
                          children: [
                            SubMenuBarItem(
                              title: "Customer Credit",
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<NavigationBloc>(context)
                                    .add(NavigationEvents.BankClickedEvent);
                              },
                            ),
                            SubMenuBarItem(
                              title: "Customer Payments",
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<NavigationBloc>(context)
                                    .add(NavigationEvents.BankClickedEvent);
                              },
                            ),
                            SubMenuBarItem(
                              title: "Customer Balance",
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<NavigationBloc>(context)
                                    .add(NavigationEvents.BankClickedEvent);
                              },
                            ),
                          ],
                        ),
                      ),
                      MenuBarItem(
                        icon: MdiIcons.homeAssistant,
                        title: "Bank",
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.BankClickedEvent);
                        },
                      ),
                      MenuBarItem(
                        icon: MdiIcons.networkStrength4,
                        title: "Online Payment",
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.OnlinePaymentsClickedEvent);
                        },
                      ),
                      MenuBarItem(
                        icon: MdiIcons.atom,
                        title: "Expenditure",
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.ExpenditureClickedEvent);
                        },
                      ),
                      Divider(
                        height: 30.h,
                        thickness: 2.h,
                        color: Colors.white.withOpacity(0.4),
                        indent: 16.w,
                        endIndent: 16.w,
                      ),
                      MenuBarItem(icon: Icons.settings, title: "Settings"),
                      MenuBarItem(icon: Icons.exit_to_app, title: "Logout"),
                    ]),
                  ),
                ),
                Align(
                  alignment: Alignment(0, -0.9),
                  child: GestureDetector(
                    onTap: () {
                      onIconPressed();
                    },
                    child: ClipPath(
                      clipper: CustomMenuClipper(),
                      child: Container(
                        color: Palette.mainGreen,
                        width: 35,
                        height: 110,
                        alignment: Alignment.centerLeft,
                        child: AnimatedIcon(
                          color: Palette.mainWhite,
                          progress: _animationController.view,
                          icon: AnimatedIcons.menu_close,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
