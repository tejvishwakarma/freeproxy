import '/flutter_flow/flutter_flow_util.dart';
import 'proxy_update_widget.dart' show ProxyUpdateWidget;
import 'package:flutter/material.dart';

class ProxyUpdateModel extends FlutterFlowModel<ProxyUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for refs widget.
  FocusNode? refsFocusNode;
  TextEditingController? refsTextController;
  String? Function(BuildContext, String?)? refsTextControllerValidator;
  // State field(s) for ip widget.
  FocusNode? ipFocusNode;
  TextEditingController? ipTextController;
  String? Function(BuildContext, String?)? ipTextControllerValidator;
  // State field(s) for port widget.
  FocusNode? portFocusNode;
  TextEditingController? portTextController;
  String? Function(BuildContext, String?)? portTextControllerValidator;
  // State field(s) for region widget.
  FocusNode? regionFocusNode;
  TextEditingController? regionTextController;
  String? Function(BuildContext, String?)? regionTextControllerValidator;
  // State field(s) for type widget.
  FocusNode? typeFocusNode;
  TextEditingController? typeTextController;
  String? Function(BuildContext, String?)? typeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    refsFocusNode?.dispose();
    refsTextController?.dispose();

    ipFocusNode?.dispose();
    ipTextController?.dispose();

    portFocusNode?.dispose();
    portTextController?.dispose();

    regionFocusNode?.dispose();
    regionTextController?.dispose();

    typeFocusNode?.dispose();
    typeTextController?.dispose();
  }
}
