import 'dart:ui';

import 'package:generic_app/models/ConsoleAppConfig.dart';
import 'package:generic_app/models/LinkConfig.dart';
import 'package:generic_app/utils/HexColor.dart';

class CurrentConsoleAppConfig {
  static final CurrentConsoleAppConfig instance =
      CurrentConsoleAppConfig._privateConstructor();

  CurrentConsoleAppConfig._privateConstructor();

  updateConfig(ConsoleAppConfig appConfig, String project) {
    this._realm = appConfig.realm;
    this._initialUrl = appConfig.initialUrl;
    this._url = appConfig.url;
    this._menuEnabled = appConfig.menuEnabled;
    this._menuPosition = appConfig.menuPosition;
    this._primaryColor = appConfig.primaryColor;
    this._secondaryColor = appConfig.secondaryColor;
    this._links = appConfig.links;
    this._projectName = project;
  }

  String _realm;
  String _initialUrl;
  String _url;
  bool _menuEnabled;
  String _menuPosition;
  String _menuImage;
  String _primaryColor;
  String _secondaryColor;
  List<LinkConfig> _links;
  String _projectName;


  String get realm {
    return _realm;
  }

  String get initialUrl {
    return _initialUrl;
  }

  String get url {
    return _url;
    //consolePlatform
    //consoleName=realm
    //consoleVersion
  }

  bool get menuEnabled {
    return _menuEnabled;
  }

  String get menuPosition {
    return _menuPosition ?? "BOTTOM_LEFT";
  }

  String get menuImage {
    return _menuImage ?? "menu";
  }

  Color get primaryColor {
    return HexColor(_primaryColor ?? "#43A047");
  }

  Color get secondaryColor {
    return HexColor(_secondaryColor ?? "#C1D72E");
  }

  List<LinkConfig> get links {
    return _links;
  }

  String get baseUrl {
    return "https://$_projectName.openremote.io/api/$_realm";
  }
}
