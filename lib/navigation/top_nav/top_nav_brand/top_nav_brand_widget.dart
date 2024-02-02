import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/top_nav/top_nav_icon/icon/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'top_nav_brand_model.dart';
export 'top_nav_brand_model.dart';

class TopNavBrandWidget extends StatefulWidget {
  const TopNavBrandWidget({
    super.key,
    this.topNavIcon,
    required this.icon1,
    required this.icon2,
  });

  final Widget? topNavIcon;
  final Widget? icon1;
  final Widget? icon2;

  @override
  State<TopNavBrandWidget> createState() => _TopNavBrandWidgetState();
}

class _TopNavBrandWidgetState extends State<TopNavBrandWidget> {
  late TopNavBrandModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopNavBrandModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            wrapWithModel(
              model: _model.iconModel,
              updateCallback: () => setState(() {}),
              child: IconWidget(
                icon: widget.topNavIcon!,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SvgPicture.asset(
                'assets/images/NextFin.svg',
                width: 80.0,
                height: 28.0,
                fit: BoxFit.cover,
              ),
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
                      borderColor: Colors.transparent,
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
                ].divide(const SizedBox(width: 8.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
