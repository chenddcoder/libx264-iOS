Pod::Spec.new do |s|
  s.name     = 'libx264-iOS'
  s.version  = '1.3'
  s.license  = 'MIT'
  s.summary  = 'libx264 build for iOS'
  s.homepage = 'https://github.com/chenddcoder/libx264-iOS'
  s.authors  = { 'chenddcoder' => 'chenddcoder@foxmail.com' }
  s.source   = { :git => 'https://github.com/chenddcoder/libx264-iOS.git', :tag => "1.3", :submodules => true }
  s.requires_arc = false
  
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.8'

  s.public_header_files = 'include/{*}.h'
  
  s.vendored_libraries = 'lib/libx264.a'
  s.preserve_paths = 'include/*.h'
  s.libraries = 'x264'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/include/**", "LIBRARY_SEARCH_PATHS" => "${PODS_ROOT}/#{s.name}/lib/**" }
end
