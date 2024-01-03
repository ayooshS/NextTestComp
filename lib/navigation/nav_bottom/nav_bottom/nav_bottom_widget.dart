import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'nav_bottom_model.dart';
export 'nav_bottom_model.dart';

class NavBottomWidget extends StatefulWidget {
  const NavBottomWidget({
    super.key,
    int? selectedPageIndex,
    bool? hiddenNav,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hiddenNav = hiddenNav ?? false;

  final int selectedPageIndex;
  final bool hiddenNav;

  @override
  _NavBottomWidgetState createState() => _NavBottomWidgetState();
}

class _NavBottomWidgetState extends State<NavBottomWidget> {
  late NavBottomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBottomModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        // Component Changes
        // 1. Change icon to fluent icon
        //
        // Component Parameters available
        // 1. SelectedPageIndex: Allows you to set the active page and icon. Format- integer.
        // 2. hiddenNav: If any any case you want to hide the nav from a page use this. Format - Boolean.
        ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 8.0,
          sigmaY: 16.0,
        ),
        child: Container(
          width: double.infinity,
          height: 80.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).surfaceOverlay,
            border: Border.all(
              color: FlutterFlowTheme.of(context).surfaceBackgroundGlass,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 32.0,
                              height: 32.0,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: const Color(0x00FFFFFF),
                                  borderRadius: 0.0,
                                  borderWidth: 0.0,
                                  buttonSize: double.infinity,
                                  fillColor: const Color(0x00FFFFFF),
                                  icon: Icon(
                                    Icons.other_houses_outlined,
                                    color: widget.selectedPageIndex == 1
                                        ? FlutterFlowTheme.of(context)
                                            .corePrimary
                                        : FlutterFlowTheme.of(context).typeLow,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    context.goNamed(
                                      'TestHomePage',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Text(
                              'Home',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: widget.selectedPageIndex == 1
                                        ? FlutterFlowTheme.of(context)
                                            .corePrimary
                                        : FlutterFlowTheme.of(context).typeLow,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 32.0,
                          height: 32.0,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0x00FFFFFF),
                              borderRadius: 0.0,
                              borderWidth: 0.0,
                              buttonSize: double.infinity,
                              fillColor: const Color(0x00FFFFFF),
                              icon: Icon(
                                Icons.currency_rupee_rounded,
                                color: widget.selectedPageIndex == 2
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                  'Finance',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Text(
                          'Finance',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Nunito',
                                color: widget.selectedPageIndex == 2
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 32.0,
                          height: 32.0,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0x00FFFFFF),
                              borderRadius: 0.0,
                              borderWidth: 0.0,
                              buttonSize: double.infinity,
                              fillColor: const Color(0x00FFFFFF),
                              icon: Icon(
                                Icons.storefront,
                                color: widget.selectedPageIndex == 3
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                  'Source',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Text(
                          'Source',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Nunito',
                                color: widget.selectedPageIndex == 3
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 32.0,
                          height: 32.0,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0x00FFFFFF),
                              borderRadius: 0.0,
                              borderWidth: 0.0,
                              buttonSize: double.infinity,
                              fillColor: const Color(0x00FFFFFF),
                              icon: Icon(
                                Icons.route,
                                color: widget.selectedPageIndex == 4
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                  'Automate',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Text(
                          'Automate',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Nunito',
                                color: widget.selectedPageIndex == 4
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 32.0,
                          height: 32.0,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0x00FFFFFF),
                              borderRadius: 0.0,
                              borderWidth: 0.0,
                              buttonSize: double.infinity,
                              fillColor: const Color(0x00FFFFFF),
                              icon: Icon(
                                Icons.notifications_none_rounded,
                                color: widget.selectedPageIndex == 5
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                  'Alert',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Text(
                          'Alerts',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Nunito',
                                color: widget.selectedPageIndex == 5
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]
                .divide(const SizedBox(width: 8.0))
                .addToStart(const SizedBox(width: 24.0))
                .addToEnd(const SizedBox(width: 24.0)),
          ),
        ),
      ),
    );
  }
}
