import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'md_btn_disabled_model.dart';
export 'md_btn_disabled_model.dart';

class MdBtnDisabledWidget extends StatefulWidget {
  const MdBtnDisabledWidget({
    super.key,
    String? btnText,
  }) : btnText = btnText ?? 'Apply';

  final String btnText;

  @override
  State<MdBtnDisabledWidget> createState() => _MdBtnDisabledWidgetState();
}

class _MdBtnDisabledWidgetState extends State<MdBtnDisabledWidget> {
  late MdBtnDisabledModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdBtnDisabledModel());
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
        color: Color(0xFF818C9E),
        size: 16.0,
      ),
      options: FFButtonOptions(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
        color: const Color(0xFFEAEEF4),
        textStyle: GoogleFonts.getFont(
          'Nunito',
          color: const Color(0xFF818C9E),
          fontSize: 16.0,
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
