# react-native-tdx.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-tdx"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-tdx
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-tdx"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Your Name" => "yourname@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-tdx.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "libtdjson"

  Pod::Spec.new do |s|
    s.pod_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS' => '${PODS_TARGET_SRCROOT}/include',
      'OTHER_LDFLAGS' => '-ltdjson',
    }
  end
  # ...
  # s.dependency "..."
end

