import '/buttons/sm_btn/sm_btn_bezeled/sm_btn_bezeled_widget.dart';
import '/buttons/sm_btn/sm_btn_default/sm_btn_default_widget.dart';
import '/buttons/sm_btn/sm_btn_disabled/sm_btn_disabled_widget.dart';
import '/buttons/sm_btn/sm_btn_link/sm_btn_link_widget.dart';
import '/buttons/sm_btn/sm_btn_primary/sm_btn_primary_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.smBtnPrimaryModel,
                  updateCallback: () => setState(() {}),
                  child: SmBtnPrimaryWidget(
                    btnText: 'ccsdsd',
                    icon: Icon(
                      Icons.sixty_fps_outlined,
                      color: FlutterFlowTheme.of(context).btnColor,
                      size: 12.0,
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.smBtnDefaultModel,
                  updateCallback: () => setState(() {}),
                  child: const SmBtnDefaultWidget(),
                ),
                wrapWithModel(
                  model: _model.smBtnBezeledModel,
                  updateCallback: () => setState(() {}),
                  child: const SmBtnBezeledWidget(),
                ),
                wrapWithModel(
                  model: _model.smBtnLinkModel,
                  updateCallback: () => setState(() {}),
                  child: const SmBtnLinkWidget(),
                ),
                wrapWithModel(
                  model: _model.smBtnDisabledModel,
                  updateCallback: () => setState(() {}),
                  child: const SmBtnDisabledWidget(),
                ),
              ].divide(const SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
