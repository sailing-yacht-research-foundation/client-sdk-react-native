require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-syrf-client"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "13.0" }
  s.source       = { :git => "https://github.com/sailing-yacht-research-foundation/client-sdk-react-native.git", :tag => "#{s.version}" }
  s.swift_version = ["5.0"]

  s.source_files = "ios/**/*.{h,m,mm,swift}"

  s.dependency "React-Core"
  s.dependency "SYRFLocation", "~> 0.0.14"
  s.dependency "SYRFDeviceInfo"

end
