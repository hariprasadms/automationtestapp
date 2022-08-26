import '../checkbox/checkbox_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../form/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Automation Testing App',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 20,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                      reverseDuration: Duration(milliseconds: 0),
                      child: FormWidget(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Form ',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  subtitle: Text(
                    'Enter data to text feilds and verify its data in the next page.',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF303030),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckboxWidget(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Verify checkbox',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  subtitle: Text(
                    'Assert checkbox status',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF303030),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
