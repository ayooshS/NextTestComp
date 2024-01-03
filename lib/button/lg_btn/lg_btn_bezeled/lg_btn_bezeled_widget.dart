import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'lg_btn_bezeled_model.dart';
export 'lg_btn_bezeled_model.dart';

class LgBtnBezeledWidget extends StatefulWidget {
  const LgBtnBezeledWidget({
    super.key,
    String? btnText,
  })  : btnText = btnText ?? 'Apply';

  final String btnText;

  @override
  _LgBtnBezeledWidgetState createState() => _LgBtnBezeledWidgetState();
}

class _LgBtnBezeledWidgetState extends State<LgBtnBezeledWidget> {
  late LgBtnBezeledModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LgBtnBezeledModel());
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
      icon: const Icon(
        Icons.play_circle,
        color: Color(0xFF0486FF),
        size: 20.0,
      ),
      options: FFButtonOptions(
        height: 48.0,
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
        color: const Color(0x00FFFFFF),
        textStyle: GoogleFonts.getFont(
          'Nunito',
          color: FlutterFlowTheme.of(context).pPrimary,
          fontSize: 18.0,
        ),
        elevation: 0.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 0.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
