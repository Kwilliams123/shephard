import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shephard/providers/login.provider.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<LoginProvider>.value(
    value: LoginProvider(),
  ),
];
