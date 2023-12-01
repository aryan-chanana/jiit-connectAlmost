import 'dart:typed_data';

import 'facesdk_plugin_platform_interface.dart';

class FacesdkPlugin {
  Future<String?> getPlatformVersion() {
    return FacesdkPluginPlatform.instance.getPlatformVersion();
  }

  Future<int?> setActivation(String license) {
    print("FacesdkPluginPlatform.instance.setActivation(license) ${license}");
    return FacesdkPluginPlatform.instance.setActivation(license);
  }

  Future<int?> init() {
    print("FacesdkPluginPlatform.instance.init() ${FacesdkPluginPlatform.instance.init()}");
    return FacesdkPluginPlatform.instance.init();
  }

  Future<void> setParam(Map<String, Object> params) async {
    print("FacesdkPluginPlatform.instance.setParam(params) ${FacesdkPluginPlatform.instance.setParam(params)}");
    await FacesdkPluginPlatform.instance.setParam(params);
  }

  Future<dynamic> extractFaces(String imagePath) {
    print("FacesdkPluginPlatform.instance.extractFaces(imagePath) ${FacesdkPluginPlatform.instance.extractFaces(imagePath)}");
    return FacesdkPluginPlatform.instance.extractFaces(imagePath);
  }

  Future<double?> similarityCalculation(
      Uint8List templates1, Uint8List templates2) {
    print("FacesdkPluginPlatform.instance.similarityCalculation(templates1, templates2) ${FacesdkPluginPlatform.instance.similarityCalculation(templates1, templates2)}");
    return FacesdkPluginPlatform.instance
        .similarityCalculation(templates1, templates2);
  }
}
