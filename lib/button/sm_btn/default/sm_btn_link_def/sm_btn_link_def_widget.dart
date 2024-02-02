import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'sm_btn_link_def_model.dart';
export 'sm_btn_link_def_model.dart';

class SmBtnLinkDefWidget extends StatefulWidget {
  const SmBtnLinkDefWidget({
    super.key,
    String? btnText,
  }) : btnText = btnText ?? 'Apply';

  final String btnText;

  @override
  State<SmBtnLinkDefWidget> createState() => _SmBtnLinkDefWidgetState();
}

class _SmBtnLinkDefWidgetState extends State<SmBtnLinkDefWidget> {
  late SmBtnLinkDefModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmBtnLinkDefModel());
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
        print('Button pressed ...');
      },
      text: widget.btnText,
      options: FFButtonOptions(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        iconPadding: const EdgeInsets.all(0.0),
        color: const Color(0x00FFFFFF),
        textStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Nunito',
              color: FlutterFlowTheme.of(context).corePrimary,
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
