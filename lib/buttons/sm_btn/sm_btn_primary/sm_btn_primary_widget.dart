import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'sm_btn_primary_model.dart';
export 'sm_btn_primary_model.dart';

class SmBtnPrimaryWidget extends StatefulWidget {
  const SmBtnPrimaryWidget({
    super.key,
    String? btnText,
    required this.icon,
  })  : btnText = btnText ?? 'Apply';

  final String btnText;
  final Widget? icon;

  @override
  _SmBtnPrimaryWidgetState createState() => _SmBtnPrimaryWidgetState();
}

class _SmBtnPrimaryWidgetState extends State<SmBtnPrimaryWidget> {
  late SmBtnPrimaryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmBtnPrimaryModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('SmBtnPrimar pressed ...');
      },
      text: widget.btnText,
      icon: widget.icon,
      options: FFButtonOptions(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        iconPadding: const EdgeInsets.all(0.0),
        color: FlutterFlowTheme.of(context).tertiary,
        textStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Nunito',
              color: FlutterFlowTheme.of(context).btnColor,
            ),
        elevation: 0.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 0.0,
        ),
        borderRadius: BorderRadius.circular(40.0),
      ),
    );
  }
}
