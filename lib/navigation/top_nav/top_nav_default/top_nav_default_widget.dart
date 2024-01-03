import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/top_nav/top_nav_icon/initials/initials_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'top_nav_default_model.dart';
export 'top_nav_default_model.dart';

class TopNavDefaultWidget extends StatefulWidget {
  const TopNavDefaultWidget({
    super.key,
    String? title,
    String? subTitile,
    this.icon1,
    required this.icon2,
    required this.icon3,
  })  : title = title ?? 'Surender Kumar',
        subTitile = subTitile ?? 'Add Buisness Info';

  final String title;
  final String subTitile;
  final Widget? icon1;
  final Widget? icon2;
  final Widget? icon3;

  @override
  _TopNavDefaultWidgetState createState() => _TopNavDefaultWidgetState();
}

class _TopNavDefaultWidgetState extends State<TopNavDefaultWidget> {
  late TopNavDefaultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopNavDefaultModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 7.0,
        ),
        child: Container(
          width: double.infinity,
          height: 64.0,
          constraints: const BoxConstraints(
            maxHeight: 64.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).surfaceOverlay,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 7.0, 16.0, 7.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.initialsModel,
                      updateCallback: () => setState(() {}),
                      child: const InitialsWidget(),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    color:
                                        FlutterFlowTheme.of(context).typeHigh,
                                  ),
                            ),
                            Text(
                              widget.subTitile,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Nunito',
                                    color:
                                        FlutterFlowTheme.of(context).typeMedium,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(width: 16.0)),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 0.0,
                          borderWidth: 0.0,
                          buttonSize: 40.0,
                          icon: widget.icon1!,
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 0.0,
                          borderWidth: 0.0,
                          buttonSize: 40.0,
                          icon: widget.icon2!,
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 0.0,
                          borderWidth: 0.0,
                          buttonSize: 40.0,
                          icon: widget.icon3!,
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
