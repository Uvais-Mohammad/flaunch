import 'dart:math';

import 'package:flutter/material.dart';
// This utility class provides screen size and scaling functionalities
// for Flutter applications. It allows developers to adapt UI elements
// based on the device's screen size and orientation.
// Call the `init` method with the current BuildContext to initialize
// the utility before using its scaling methods.


// Extension for BuildContext to initialize GSScreenUtil
extension BuildContextExtension on BuildContext {
  /// Initializes GSScreenUtil with the current context, UI size, and max width.
  void initScreenUtil({
    Size uiSize = GSScreenUtil.defaultUISize,
    double maxWidth = 475,
  }) {
    GSScreenUtil().init(
      context: this,
      uiSize: uiSize,
      maxWidth: maxWidth,
    );
  }
}

class GSScreenUtil {
  // Singleton instance of GSScreenUtil
  static final GSScreenUtil _instance = GSScreenUtil._internal();

  // Default UI size for scaling
  static const Size defaultUISize = Size(375, 812);

  late Size _uiSize;
  late double _maxWidth;
  late double _screenWidth;
  late double _screenHeight;
  late double _statusBarHeight;
  late double _bottomBarHeight;
  late Orientation _orientation;
  bool _initialized = false;

  factory GSScreenUtil() => _instance;

  GSScreenUtil._internal();

  /// Initializes the GSScreenUtil with the given context and optional UI size and max width.
  void init({
    required BuildContext context,
    Size uiSize = defaultUISize,
    double maxWidth = 475,
  }) {
    if (_initialized) return;

    final mediaQuery = MediaQuery.of(context);

    _updateDimensions(context);
    _statusBarHeight = mediaQuery.padding.top;
    _bottomBarHeight = mediaQuery.padding.bottom;
    _uiSize = uiSize;
    _maxWidth = maxWidth;
    _initialized = true;
  }

  /// Updates the screen dimensions based on the current media query.
  void _updateDimensions(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    _orientation = mediaQuery.orientation;

    // Handle orientation
    if (_orientation == Orientation.portrait) {
      _screenWidth = mediaQuery.size.width;
      _screenHeight = mediaQuery.size.height;
    } else {
      _screenWidth = mediaQuery.size.height;
      _screenHeight = mediaQuery.size.width;
    }
  }

  /// Returns the screen width, limited by the max width.
  double get screenWidth => _screenWidth < _maxWidth ? _screenWidth : _maxWidth;

  /// Returns the screen height.
  double get screenHeight => _screenHeight;

  /// Returns the height of the status bar.
  double get statusBarHeight => _statusBarHeight;

  /// Returns the height of the bottom bar.
  double get bottomBarHeight => _bottomBarHeight;

  /// Returns the scale factor for width based on the UI size.
  double get scaleWidth => _enableScale ? screenWidth / _uiSize.width : 1;

  /// Returns the scale factor for height based on the UI size.
  double get scaleHeight => _enableScale ? screenHeight / _uiSize.height : 1;

  /// Checks if scaling is enabled and throws an error if not initialized.
  bool get _enableScale {
    if (!_initialized) {
      throw StateError('GSScreenUtil not initialized. Call init() first.');
    }
    return true;
  }

  /// Scales a given width based on the current screen width.
  double setWidth(num width) => width * scaleWidth;

  /// Scales a given height based on the current screen height.
  double setHeight(num height) => height * scaleHeight;

  /// Scales a given radius based on the minimum scale factor.
  double radius(num r) => r * min(scaleWidth, scaleHeight);

  /// Scales a given font size based on the minimum scale factor.
  double setSp(num fontSize) => fontSize * min(scaleWidth, scaleHeight);

  /// Adapts a given size based on the minimum scale factor.
  double adaptive(num size) => size * min(scaleWidth, scaleHeight);

  /// Determines the device type based on the screen width.
  DeviceType get deviceType {
    if (_screenWidth >= 900) return DeviceType.tablet;
    if (_screenWidth >= 600) return DeviceType.tabletSmall;
    return DeviceType.mobile;
  }
}

// Enum for device types
enum DeviceType { mobile, tabletSmall, tablet }

// Extension for num to provide scaling methods
extension GSNumExtension on num {
  /// Scales the width based on the current screen width.
  double get w => GSScreenUtil().setWidth(this);

  /// Scales the height based on the current screen height.
  double get h => GSScreenUtil().setHeight(this);

  /// Returns a scaled width based on the current screen width.
  double get sw => GSScreenUtil().screenWidth * this;

  /// Returns a scaled height based on the current screen height.
  double get sh => GSScreenUtil().screenHeight * this;

  /// Scales a radius based on the minimum scale factor.
  double get r => GSScreenUtil().radius(this);

  /// Scales a font size based on the minimum scale factor.
  double get sp => GSScreenUtil().setSp(this);

  /// Adapts a size based on the minimum scale factor.
  double get a => GSScreenUtil().adaptive(this);
}
