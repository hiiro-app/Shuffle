Pod::Spec.new do |s|

s.name         = "Shuffle-iOS"
s.version      = "0.4.2"
s.platform     = :ios, "9.0"
s.summary      = "A multi-directional card swiping library inspired by Tinder"

s.description  = <<-DESC
A multi-directional card swiping library inspired by Tinder.
DESC

s.homepage     = "https://github.com/mac-gallagher/Shuffle"
s.documentation_url = "https://github.com/mac-gallagher/Shuffle/tree/master/README.md"
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { "Mac Gallagher" => "jmgallagher36@gmail.com" }
s.source       = { :git => "https://github.com/mac-gallagher/Shuffle.git", :tag => "v" + s.version.to_s }

s.swift_version = "5.0"
s.source_files = "Sources/Shuffle/Classes/**/*.{h,swift}"

end
