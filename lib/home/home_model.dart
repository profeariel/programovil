import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/bs_factura_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombreProducto widget.
  TextEditingController? txtNombreProductoController;
  String? Function(BuildContext, String?)? txtNombreProductoControllerValidator;
  // State field(s) for txtNumeroUno widget.
  TextEditingController? txtNumeroUnoController;
  String? Function(BuildContext, String?)? txtNumeroUnoControllerValidator;
  // State field(s) for txtNumeroDos widget.
  TextEditingController? txtNumeroDosController;
  String? Function(BuildContext, String?)? txtNumeroDosControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreProductoController?.dispose();
    txtNumeroUnoController?.dispose();
    txtNumeroDosController?.dispose();
  }

  /// Additional helper methods are added here.

}
