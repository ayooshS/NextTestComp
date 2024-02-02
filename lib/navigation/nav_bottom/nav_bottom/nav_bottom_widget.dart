import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
  State<NavBottomWidget> createState() => _NavBottomWidgetState();
}

class _NavBottomWidgetState extends State<NavBottomWidget>
    with TickerProviderStateMixin {
  late NavBottomModel _model;

  final animationsMap = {
    'iconButtonOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'iconButtonOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'iconButtonOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'iconButtonOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'iconButtonOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBottomModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
          height: 86.0,
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
                              width: 40.0,
                              height: 40.0,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: const Color(0x00FFFFFF),
                                  borderRadius: 0.0,
                                  borderWidth: 0.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0x00FFFFFF),
                                  icon: Icon(
                                    FFIcons.kicFluentHome20Regular,
                                    color: widget.selectedPageIndex == 1
                                        ? FlutterFlowTheme.of(context)
                                            .corePrimary
                                        : FlutterFlowTheme.of(context).typeLow,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    if (animationsMap[
                                            'iconButtonOnActionTriggerAnimation1'] !=
                                        null) {
                                      await animationsMap[
                                              'iconButtonOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0)
                                          .whenComplete(animationsMap[
                                                  'iconButtonOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse);
                                    }

                                    context.pushNamed(
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
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'iconButtonOnActionTriggerAnimation1']!,
                                ),
                              ),
                            ),
                            AutoSizeText(
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
                          width: 40.0,
                          height: 40.0,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0x00FFFFFF),
                              borderRadius: 0.0,
                              borderWidth: 0.0,
                              buttonSize: 40.0,
                              fillColor: const Color(0x00FFFFFF),
                              icon: Icon(
                                FFIcons.kicFluentMoney20Regular,
                                color: widget.selectedPageIndex == 2
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                                size: 28.0,
                              ),
                              onPressed: () async {
                                if (animationsMap[
                                        'iconButtonOnActionTriggerAnimation2'] !=
                                    null) {
                                  await animationsMap[
                                          'iconButtonOnActionTriggerAnimation2']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'iconButtonOnActionTriggerAnimation2']!
                                          .controller
                                          .reverse);
                                }

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
                            ).animateOnActionTrigger(
                              animationsMap[
                                  'iconButtonOnActionTriggerAnimation2']!,
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
                          width: 40.0,
                          height: 40.0,
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
                                FFIcons.kicFluentAppFolder20Regular,
                                color: widget.selectedPageIndex == 3
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                if (animationsMap[
                                        'iconButtonOnActionTriggerAnimation3'] !=
                                    null) {
                                  await animationsMap[
                                          'iconButtonOnActionTriggerAnimation3']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'iconButtonOnActionTriggerAnimation3']!
                                          .controller
                                          .reverse);
                                }

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
                            ).animateOnActionTrigger(
                              animationsMap[
                                  'iconButtonOnActionTriggerAnimation3']!,
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
                          width: 40.0,
                          height: 40.0,
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
                                FFIcons.kicFluentFlow20Regular,
                                color: widget.selectedPageIndex == 4
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                if (animationsMap[
                                        'iconButtonOnActionTriggerAnimation4'] !=
                                    null) {
                                  await animationsMap[
                                          'iconButtonOnActionTriggerAnimation4']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'iconButtonOnActionTriggerAnimation4']!
                                          .controller
                                          .reverse);
                                }

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
                            ).animateOnActionTrigger(
                              animationsMap[
                                  'iconButtonOnActionTriggerAnimation4']!,
                            ),
                          ),
                        ),
                        AutoSizeText(
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
                          width: 40.0,
                          height: 40.0,
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
                                FFIcons.kicFluentAlertBadge20Regular,
                                color: widget.selectedPageIndex == 5
                                    ? FlutterFlowTheme.of(context).corePrimary
                                    : FlutterFlowTheme.of(context).typeLow,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                if (animationsMap[
                                        'iconButtonOnActionTriggerAnimation5'] !=
                                    null) {
                                  await animationsMap[
                                          'iconButtonOnActionTriggerAnimation5']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'iconButtonOnActionTriggerAnimation5']!
                                          .controller
                                          .reverse);
                                }

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
                            ).animateOnActionTrigger(
                              animationsMap[
                                  'iconButtonOnActionTriggerAnimation5']!,
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
