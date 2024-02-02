import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sm_btn_default_model.dart';
export 'sm_btn_default_model.dart';

class SmBtnDefaultWidget extends StatefulWidget {
  const SmBtnDefaultWidget({
    super.key,
    String? btnText,
  }) : btnText = btnText ?? 'Apply';

  final String btnText;

  @override
  State<SmBtnDefaultWidget> createState() => _SmBtnDefaultWidgetState();
}

class _SmBtnDefaultWidgetState extends State<SmBtnDefaultWidget> {
  late SmBtnDefaultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmBtnDefaultModel());
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
      icon: const FaIcon(
        FontAwesomeIcons.adn,
        color: Color(0xFF4E596B),
        size: 12.0,
      ),
      options: FFButtonOptions(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        iconPadding: const EdgeInsets.all(0.0),
        color: const Color(0xFFEAEEF4),
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Nunito',
              color: const Color(0xFF4E596B),
              fontSize: 12.0,
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
