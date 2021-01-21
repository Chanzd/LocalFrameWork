#
# Be sure to run `pod lib lint PublicModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LocalFramework'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LocalFramework.'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
  DESC
  
  s.homepage         = 'https://github.com/1136114369@qq.com/PublicModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT'}
  s.author           = { '1136114369@qq.com' => 'gaoyanxiang@pinming.cn' }
  s.source           = { :git => 'https://github.com/1136114369@qq.com/PublicModule.git', :tag => s.version.to_s }
  #    s.pod_target_xcconfig = {
  #              'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/Local/LocalFramework/**/*.framework/Headers',
  #              'LD_RUNPATH_SEARCH_PATHS' => '(PODS_ROOT)/Local/LocalFramework/Frameworks/',
  #    }
  
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
   s.source_files  =  "Code/**/*.{h,m,swift}"
  s.ios.deployment_target = '10.0'
  s.vendored_frameworks = ['Frameworks/**/*.framework','OtherFramework/**/*.framework']
  s.vendored_libraries = ['Frameworks/**/*.a','OtherFramework/**/*.a']
  s.resources = ['Frameworks/**/*.bundle','OtherFramework/**/*.bundle']
  s.swift_version = '4.2' #在spec中设置


  
  s.dependency 'WqUtils'

  s.dependency 'ReactiveObjC','3.1.1'
  s.dependency 'RxSwift','5.1.1'
  s.dependency 'RxCocoa','5.1.1'
  s.dependency 'SnapKit', '4.2.0'
  s.dependency 'PromiseKit','6.11.0'
  s.dependency 'HandyJSON','5.0.1'
  s.dependency 'Charts','3.5.0'
  s.dependency 'Alamofire','5.1.0'

 s.dependency 'Moya/RxSwift','14.0'


  
  s.prepare_command = <<-EOF
  
  # 百度地图 Base Module
  rm -rf Frameworks/BaiduMapKit/BaiduMapAPI_Base.framework/Modules
  mkdir Frameworks/BaiduMapKit/BaiduMapAPI_Base.framework/Modules
  touch Frameworks/BaiduMapKit/BaiduMapAPI_Base.framework/Modules/module.modulemap
  cat <<-EOF > Frameworks/BaiduMapKit/BaiduMapAPI_Base.framework/Modules/module.modulemap
  framework module BaiduMapAPI_Base {
    umbrella header "BMKBaseComponent.h"
    export *
    link "sqlite3.0"
    link "stdc++.6.0.9"
  }
  \EOF
  
  rm -rf Frameworks/BaiduMapKit/BMKLocationKit.framework/Modules
  mkdir Frameworks/BaiduMapKit/BMKLocationKit.framework/Modules
  touch Frameworks/BaiduMapKit/BMKLocationKit.framework/Modules/module.modulemap
  cat <<-EOF > Frameworks/BaiduMapKit/BMKLocationKit.framework/Modules/module.modulemap
  framework module BMKLocationKit {
    umbrella header "BMKLocationComponent.h"
    export *
    link "sqlite3.0"
    link "stdc++.6.0.9"
  }
  \EOF

  rm -rf Frameworks/BaiduMapKit/BaiduMapAPI_Cloud.framework/Modules
  mkdir Frameworks/BaiduMapKit/BaiduMapAPI_Cloud.framework/Modules
  touch Frameworks/BaiduMapKit/BaiduMapAPI_Cloud.framework/Modules/module.modulemap
  cat <<-EOF > Frameworks/BaiduMapKit/BaiduMapAPI_Cloud.framework/Modules/module.modulemap
  framework module BaiduMapAPI_Cloud {
    umbrella header "BMKCloudSearchComponent.h"
    export *
    link "sqlite3.0"
    link "stdc++.6.0.9"
  }
  \EOF
  
  rm -rf Frameworks/BaiduMapKit/BaiduMapAPI_Map.framework/Modules
  mkdir Frameworks/BaiduMapKit/BaiduMapAPI_Map.framework/Modules
  touch Frameworks/BaiduMapKit/BaiduMapAPI_Map.framework/Modules/module.modulemap
  cat <<-EOF > Frameworks/BaiduMapKit/BaiduMapAPI_Map.framework/Modules/module.modulemap
  framework module BaiduMapAPI_Map {
    umbrella header "BMKMapComponent.h"
    export *
    link "sqlite3.0"
    link "stdc++.6.0.9"
  }
  \EOF
  
  rm -rf Frameworks/BaiduMapKit/BaiduMapAPI_Search.framework/Modules
  mkdir Frameworks/BaiduMapKit/BaiduMapAPI_Search.framework/Modules
  touch Frameworks/BaiduMapKit/BaiduMapAPI_Search.framework/Modules/module.modulemap
  cat <<-EOF > Frameworks/BaiduMapKit/BaiduMapAPI_Search.framework/Modules/module.modulemap
  framework module BaiduMapAPI_Search {
    umbrella header "BMKSearchComponent.h"
    export *
    link "sqlite3.0"
    link "stdc++.6.0.9"
  }
  \EOF
  
  rm -rf Frameworks/BaiduMapKit/BaiduMapAPI_Utils.framework/Modules
  mkdir Frameworks/BaiduMapKit/BaiduMapAPI_Utils.framework/Modules
  touch Frameworks/BaiduMapKit/BaiduMapAPI_Utils.framework/Modules/module.modulemap
  cat <<-EOF > Frameworks/BaiduMapKit/BaiduMapAPI_Utils.framework/Modules/module.modulemap
  framework module BaiduMapAPI_Utils {
    umbrella header "BMKUtilsComponent.h"
    export *
    link "sqlite3.0"
    link "stdc++.6.0.9"
  }
  \EOF
  
  
  rm -rf Frameworks/GTSDK/GTSDK.framework/Modules
  mkdir Frameworks/GTSDK/GTSDK.framework/Modules
  touch Frameworks/GTSDK/GTSDK.framework/Modules/module.modulemap
  cat <<-EOF > Frameworks/GTSDK/GTSDK.framework/Modules/module.modulemap
  framework module GTSDK {
    umbrella header "GeTuiSdk.h"
    export *
    link "sqlite3.0"
    link "stdc++.6.0.9"
  }
  \EOF
  
  rm -rf Frameworks/UMShare/UMShare.framework/Modules
  mkdir Frameworks/UMShare/UMShare.framework/Modules
  touch Frameworks/UMShare/UMShare.framework/Modules/module.modulemap
  cat <<-EOF > Frameworks/UMShare/UMShare.framework/Modules/module.modulemap
  framework module UMShare {
    umbrella header "UMShare.h"
    export *
    link "sqlite3.0"
    link "stdc++.6.0.9"
  }
  \EOF
  
  rm -rf Frameworks/UMShare/UMSocialUI/UShareUI.framework/Modules
  mkdir Frameworks/UMShare/UMSocialUI/UShareUI.framework/Modules
  touch Frameworks/UMShare/UMSocialUI/UShareUI.framework/Modules/module.modulemap
  cat <<-EOF > Frameworks/UMShare/UMSocialUI/UShareUI.framework/Modules/module.modulemap
  framework module UShareUI {
    umbrella header "UShareUI.h"
    export *
    link "sqlite3.0"
    link "stdc++.6.0.9"
  }
  \EOF
  
  rm -rf Frameworks/UMCCommonLog/UMCommonLog.framework/Modules
  mkdir Frameworks/UMCCommonLog/UMCommonLog.framework/Modules
  touch Frameworks/UMCCommonLog/UMCommonLog.framework/Modules/module.modulemap
  cat <<-EOF > Frameworks/UMCCommonLog/UMCommonLog.framework/Modules/module.modulemap
  framework module UMCommonLog {
    umbrella header "UMCommonLog.h"
    export *
    link "sqlite3.0"
    link "stdc++.6.0.9"
  }
  \EOF
  
  
  
  
  
  
  
  EOF
  
  
end





