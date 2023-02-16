import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtUsuario widget.
  TextEditingController? txtUsuarioController;
  String? Function(BuildContext, String?)? txtUsuarioControllerValidator;
  String? _txtUsuarioControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe llenar este campo';
    }

    return null;
  }

  // State field(s) for txtPassword widget.
  TextEditingController? txtPasswordController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtUsuarioControllerValidator = _txtUsuarioControllerValidator;
    txtPasswordVisibility = false;
  }

  void dispose() {
    txtUsuarioController?.dispose();
    txtPasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
