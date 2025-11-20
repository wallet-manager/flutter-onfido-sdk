import 'package:onfido_sdk/onfido_sdk.dart';

class StartOptionsSerializer {
  static serialize({
    required String sdkToken,
    required FlowSteps flowSteps,
    IOSAppearance? iosAppearance,
    bool? shouldUseMediaCallback,
    EnterpriseFeatures? enterpriseFeatures,
    String? iosLocalizationFileName,
    bool? disableNFC,
    NFCOptions? nfcOption,
    OnfidoTheme? onfidoTheme,
    String? locale,
  }) {
    return {
      'sdkToken': sdkToken,
      'flowSteps': flowSteps.toJson(),
      'iosAppearance': iosAppearance?.toJson(),
      'iosLocalizationFileName': iosLocalizationFileName,
      'nfcOption': nfcOption?.name,
      'shouldUseMediaCallback': shouldUseMediaCallback,
      'enterpriseFeatures': enterpriseFeatures?.toJson(),
      'locale': locale ?? 'en',
      'onfidoTheme': onfidoTheme?.name
    };
  }
}
