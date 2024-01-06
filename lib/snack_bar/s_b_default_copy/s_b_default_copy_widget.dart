import '/button/sm_btn/default/sm_btn_link_def/sm_btn_link_def_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 's_b_default_copy_model.dart';
export 's_b_default_copy_model.dart';

class SBDefaultCopyWidget extends StatefulWidget {
  const SBDefaultCopyWidget({
    super.key,
    String? text,
    String? btnText,
  })  : text = text ?? 'Single-line snackbar with action',
        btnText = btnText ?? 'Apply';

  final String text;
  final String btnText;

  @override
  _SBDefaultCopyWidgetState createState() => _SBDefaultCopyWidgetState();
}

class _SBDefaultCopyWidgetState extends State<SBDefaultCopyWidget> {
  late SBDefaultCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SBDefaultCopyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
      child: Container(
        width: 345.0,
        height: 48.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).elevation01dp,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.text.maybeHandleOverflow(
                    maxChars: 12,
                    replacement: '…',
                  ),
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.smBtnLinkDefModel,
                    updateCallback: () => setState(() {}),
                    child: const SmBtnLinkDefWidget(),
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 0.0,
                    borderWidth: 0.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).typeHigh,
                      size: 20.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
