import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sm_btn_link_model.dart';
export 'sm_btn_link_model.dart';

class SmBtnLinkWidget extends StatefulWidget {
  const SmBtnLinkWidget({
    super.key,
    String? btnText,
  })  : btnText = btnText ?? 'Apply';

  final String btnText;

  @override
  _SmBtnLinkWidgetState createState() => _SmBtnLinkWidgetState();
}

class _SmBtnLinkWidgetState extends State<SmBtnLinkWidget> {
  late SmBtnLinkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmBtnLinkModel());
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
        color: Color(0xFF0486FF),
        size: 12.0,
      ),
      options: FFButtonOptions(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        iconPadding: const EdgeInsets.all(0.0),
        color: const Color(0x00FFFFFF),
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Nunito',
              color: const Color(0xFF0486FF),
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
