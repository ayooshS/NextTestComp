// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color corePrimary;
  late Color coreVariant;
  late Color coreError;
  late Color coreSuccess;
  late Color coreWarning;
  late Color coreAccent;
  late Color surfaceBackground;
  late Color surfaceBackgroundGlass;
  late Color surfaceOverlay;
  late Color typeHigh;
  late Color typeMedium;
  late Color typeLow;
  late Color inputBorder;
  late Color inputBackground;
  late Color elevation01dp;
  late Color elevation02dp;
  late Color buttonDisabled;
  late Color buttonBezeledGrey;
  late Color buttonOverlay;
  late Color buttonColor;
  late Color primaryWhite;
  late Color pPrimary;
  late Color btnColor;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF0486FF);
  late Color secondary = const Color(0xFF02539E);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF14181B);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color corePrimary = const Color(0xFF0486FF);
  late Color coreVariant = const Color(0xFF02539E);
  late Color coreError = const Color(0xFFE53E3E);
  late Color coreSuccess = const Color(0xFF00C356);
  late Color coreWarning = const Color(0xFFFF8B00);
  late Color coreAccent = const Color(0xFFA305E5);
  late Color surfaceBackground = const Color(0xFFFFFFFF);
  late Color surfaceBackgroundGlass = const Color(0x99FFFFFF);
  late Color surfaceOverlay = const Color(0xCCFFFFFF);
  late Color typeHigh = const Color(0xFF4E596B);
  late Color typeMedium = const Color(0xFF5B687D);
  late Color typeLow = const Color(0xFF818C9E);
  late Color inputBorder = const Color(0x3FC0C5CF);
  late Color inputBackground = const Color(0xFFF7F8FB);
  late Color elevation01dp = const Color(0xFFF7F8FB);
  late Color elevation02dp = const Color(0xFFEAEEF4);
  late Color buttonDisabled = const Color(0x1EFFFFFF);
  late Color buttonBezeledGrey = const Color(0x11FFFFFF);
  late Color buttonOverlay = const Color(0x11FFFFFF);
  late Color buttonColor = const Color(0xFFFFFFFF);
  late Color primaryWhite = const Color(0xFFFFFFFF);
  late Color pPrimary = const Color(0xFF0486FF);
  late Color btnColor = const Color(0xFFFFFFFF);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Nunito';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.bold,
        fontSize: 26.0,
        fontStyle: FontStyle.normal,
      );
  String get displayMediumFamily => 'Nunito';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.normal,
        fontSize: 26.0,
        fontStyle: FontStyle.normal,
      );
  String get displaySmallFamily => 'Nunito';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Nunito';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineMediumFamily => 'Nunito';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineSmallFamily => 'Nunito';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
        fontStyle: FontStyle.normal,
      );
  String get titleLargeFamily => 'Nunito';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Nunito';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      );
  String get titleSmallFamily => 'Readex Pro';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.typeHigh,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Readex Pro';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.typeHigh,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Nunito';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        fontStyle: FontStyle.normal,
      );
  String get labelSmallFamily => 'Nunito';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.normal,
        fontSize: 10.0,
        fontStyle: FontStyle.normal,
      );
  String get bodyLargeFamily => 'Readex Pro';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.typeHigh,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Nunito';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      );
  String get bodySmallFamily => 'Nunito';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Nunito',
        color: theme.typeHigh,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        fontStyle: FontStyle.normal,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
