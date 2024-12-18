import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_new_proxy_widget.dart' show AddNewProxyWidget;
import 'package:flutter/material.dart';

class AddNewProxyModel extends FlutterFlowModel<AddNewProxyWidget> {
  ///  Local state fields for this page.

  String? pasteID;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for docID widget.
  FocusNode? docIDFocusNode;
  TextEditingController? docIDTextController;
  String? Function(BuildContext, String?)? docIDTextControllerValidator;
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
  FocusNode? typeFocusNode1;
  TextEditingController? typeTextController1;
  String? Function(BuildContext, String?)? typeTextController1Validator;
  // State field(s) for type widget.
  FocusNode? typeFocusNode2;
  TextEditingController? typeTextController2;
  String? Function(BuildContext, String?)? typeTextController2Validator;
  // State field(s) for type widget.
  FocusNode? typeFocusNode3;
  TextEditingController? typeTextController3;
  String? Function(BuildContext, String?)? typeTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    docIDFocusNode?.dispose();
    docIDTextController?.dispose();

    ipFocusNode?.dispose();
    ipTextController?.dispose();

    portFocusNode?.dispose();
    portTextController?.dispose();

    regionFocusNode?.dispose();
    regionTextController?.dispose();

    typeFocusNode1?.dispose();
    typeTextController1?.dispose();

    typeFocusNode2?.dispose();
    typeTextController2?.dispose();

    typeFocusNode3?.dispose();
    typeTextController3?.dispose();
  }
}
