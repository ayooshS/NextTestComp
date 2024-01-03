import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 's_b_semantic_model.dart';
export 's_b_semantic_model.dart';

class SBSemanticWidget extends StatefulWidget {
  const SBSemanticWidget({
    super.key,
    String? text,
    String? btnText,
  })  : text = text ?? 'Single-line snackbar with action',
        btnText = btnText ?? 'Apply';

  final String text;
  final String btnText;

  @override
  _SBSemanticWidgetState createState() => _SBSemanticWidgetState();
}

class _SBSemanticWidgetState extends State<SBSemanticWidget> {
  late SBSemanticModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SBSemanticModel());
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
          color: FlutterFlowTheme.of(context).coreError,
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
                    maxChars: 10,
                    replacement: '…',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        color: FlutterFlowTheme.of(context).surfaceBackground,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 0.0,
                    borderWidth: 0.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).surfaceBackground,
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
