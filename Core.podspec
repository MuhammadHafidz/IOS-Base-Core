#
#  Be sure to run `pod spec lint Core.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.platform = :ios
  s.ios.deployment_target = '14.0'
  s.name = "Core"
  s.summary = "Dicoding Core.framework for modularization chapter"
  s.requires_arc = true
  s.version = "1.0.4"
  s.license = { :type => "MIT", :file => "LICENSE" }

  s.author = { "MuhammadHafidz" => "hafidzamarul@gmail.com" }
  s.homepage = "https://github.com/MuhammadHafidz/IOS-Base-Core"

  s.source = { :git => "https://github.com/MuhammadHafidz/IOS-Base-Core.git", :tag => "#{s.version}" }
  s.framework = "UIKit"

  s.source_files = "Core/**/*.{swift}"
  s.swift_version = "5.1"

  s.dependency "RealmSwift"
  s.dependency "RxSwift", "~> 6.5.0"
  s.dependency "RxCocoa", "~> 6.5.0"

end