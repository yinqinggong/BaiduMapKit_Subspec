Pod::Spec.new do |s|
  s.name         = "BaiduMapKit"
  s.version      = "3.3.0"
  s.summary      = "百度地图iOS SDK（CocoaPods百度地图官方库）"
  s.description  = <<-DESC
      百度地图iOS SDK：百度地图官方CocoaPods.
      百度地图iOS SDK是一套基于iOS 5.0及以上版本设备的应用程序接口，不仅提供展示地图的基本接口，还提供POI检索、路径规划、地图标注、离线地图、定位、周边雷达等丰富的LBS能力
                   DESC
  
  s.homepage     = "http://developer.baidu.com/map/index.php?title=iossdk"
  s.license      = { :type =>"MIT", :file => "LICENSE.txt" }
  s.authors      = { "baidu map sdk" => "dituapi_01@163.com" }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/BaiduLBS/BaiduMapKit.git", :tag => "#{s.version}" }

  # s.source_files = "BaiduMapKit/*.framework/Headers/*.h"
  # s.public_header_files = '#{s.source_files}' # "BaiduMapKit/*.framework/Headers/*.h"
  # s.resources = "BaiduMapKit/BaiduMapAPI_Map.framework/Resources/mapapi.bundle"


  s.frameworks   =  "CoreLocation", "QuartzCore", "OpenGLES", "SystemConfiguration", "CoreGraphics", "Security", "CoreTelephony"
  s.libraries    = "sqlite3.0", "stdc++.6.0.9"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "Masonry"


  s.default_subspec = 'Base'

  s.subspec 'Base' do |ss|
    ss.ios.deployment_target = '5.0'

    ss.source_files = 'BaiduMapKit/BaiduMapKit_Base.framework/Headers/*.h'
    ss.public_header_files = '#{ss.source_files}'
    
    ss.frameworks   =  "CoreLocation", "QuartzCore", "OpenGLES", "SystemConfiguration", "CoreGraphics", "Security", "CoreTelephony"
    ss.libraries    = "sqlite3.0", "stdc++.6.0.9"
  
  end

  s.subspec 'Cloud' do |ss|
    ss.ios.deployment_target = '5.0'
    
    ss.dependency 'BaiduMapKit/Base'
    ss.ios.dependency 'BaiduMapKit/Base'

    ss.source_files = 'BaiduMapKit/BaiduMapKit_Cloud.framework/Headers/*.h'
    ss.public_header_files = '#{ss.source_files}'
    
    ss.frameworks   =  "CoreLocation", "QuartzCore", "OpenGLES", "SystemConfiguration", "CoreGraphics", "Security", "CoreTelephony"
    ss.libraries    = "sqlite3.0", "stdc++.6.0.9"
  
  end

  s.subspec 'Location' do |ss|
    ss.ios.deployment_target = '5.0'
    
    ss.dependency 'BaiduMapKit/Base'
    ss.ios.dependency 'BaiduMapKit/Base'

    ss.source_files = 'BaiduMapKit/BaiduMapKit_Location.framework/Headers/*.h'
    ss.public_header_files = '#{ss.source_files}'
    
    ss.frameworks   =  "CoreLocation", "QuartzCore", "OpenGLES", "SystemConfiguration", "CoreGraphics", "Security", "CoreTelephony"
    ss.libraries    = "sqlite3.0", "stdc++.6.0.9"
  
  end

  s.subspec 'Map' do |ss|
    ss.ios.deployment_target = '5.0'


    ss.dependency 'BaiduMapKit/Base'
    ss.ios.dependency 'BaiduMapKit/Base'
    
    ss.source_files = 'BaiduMapKit/BaiduMapKit_Map.framework/Headers/*.h'
    ss.public_header_files = '#{ss.source_files}'
    ss.resources = "BaiduMapKit/BaiduMapAPI_Map.framework/Resources/mapapi.bundle"
    
    ss.frameworks   =  "CoreLocation", "QuartzCore", "OpenGLES", "SystemConfiguration", "CoreGraphics", "Security", "CoreTelephony"
    ss.libraries    = "sqlite3.0", "stdc++.6.0.9"
  
  end

  s.subspec 'Radar' do |ss|
    ss.ios.deployment_target = '5.0'

    ss.dependency 'BaiduMapKit/Base'
    ss.ios.dependency 'BaiduMapKit/Base'
    
    ss.source_files = 'BaiduMapKit/BaiduMapKit_Radar.framework/Headers/*.h'
    ss.public_header_files = '#{ss.source_files}'
    

    ss.frameworks   =  "CoreLocation", "QuartzCore", "OpenGLES", "SystemConfiguration", "CoreGraphics", "Security", "CoreTelephony"
    ss.libraries    = "sqlite3.0", "stdc++.6.0.9"
  
  end

  s.subspec 'Search' do |ss|
    ss.ios.deployment_target = '5.0'
    
    ss.dependency 'BaiduMapKit/Base'
    ss.ios.dependency 'BaiduMapKit/Base'

    ss.source_files = 'BaiduMapKit/BaiduMapKit_Search.framework/Headers/*.h'
    ss.public_header_files = '#{ss.source_files}'

    ss.frameworks   =  "CoreLocation", "QuartzCore", "OpenGLES", "SystemConfiguration", "CoreGraphics", "Security", "CoreTelephony"
    ss.libraries    = "sqlite3.0", "stdc++.6.0.9"
  
  end

  s.subspec 'Utils' do |ss|
    ss.ios.deployment_target = '5.0'

    ss.dependency 'BaiduMapKit/Base'
    ss.ios.dependency 'BaiduMapKit/Base'
    
    ss.source_files = 'BaiduMapKit/BaiduMapKit_Utils.framework/Headers/*.h'
    ss.public_header_files = '#{ss.source_files}'
    

    ss.frameworks   =  "CoreLocation", "QuartzCore", "OpenGLES", "SystemConfiguration", "CoreGraphics", "Security", "CoreTelephony"
    ss.libraries    = "sqlite3.0", "stdc++.6.0.9"
  
  end

end
