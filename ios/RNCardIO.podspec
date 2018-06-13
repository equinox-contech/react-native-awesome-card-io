require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))
version = package["version"]
giturl = package["repository"]["url"]

Pod::Spec.new do |s|
  s.name         = "RNCardIO"
  s.version      = version
  s.summary      = "react-native-awesome-card-io"
  s.description  = <<-DESC
                  react-native-awesome-card-io
                   DESC
  s.homepage     = giturl
  s.license      = "MIT"
  # s.license    = { :type => "MIT" }
  s.author       = { "Yann Pringault" => "https://github.com/Kerumen/react-native-awesome-card-io" }
  s.platform     = :ios, "6.1"
  s.source       = { :git => giturl, :tag => version }
  s.source_files  = "*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "CardIO", '5.4.1'
end
