import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({Key? key}) : super(key: key);

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool? checkboxListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Verify checkbox',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 20,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Theme(
                data: ThemeData(
                  unselectedWidgetColor: Color(0xFF95A1AC),
                ),
                child: CheckboxListTile(
                  value: checkboxListTileValue ??= false,
                  onChanged: (newValue) =>
                      setState(() => checkboxListTileValue = newValue!),
                  title: Text(
                    'Appium automation',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  subtitle: Text(
                    'Mobile automation test framework',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Is checkbox selected? - ${functions.boolToString(checkboxListTileValue)}',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
