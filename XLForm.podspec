Pod::Spec.new do |s|
  s.name     = 'XLForm'
  s.version  = '4.0.1'
  s.license  = { :type => 'MIT' }
  s.summary  = 'XLForm is the most flexible and powerful iOS library to create dynamic table-view forms.'
  s.description = <<-DESC
                    The goal of the library is to get the same power of hand-made forms but spending 1/10 of the time. XLForm provides a very powerful DSL used to create a form, validate & serialize the form data. It keeps track of this specification on runtime, updating the UI on the fly.
                  DESC
  s.homepage = 'https://github.com/xmartlabs/XLForm'
  s.authors  = { 'Martin Barreto' => 'martin@xmartlabs.com' }
  s.source   = { :git => 'https://github.com/xmartlabs/XLForm.git', :tag => s.version }
  s.requires_arc = true
  s.ios.deployment_target = '9.0'
  s.ios.frameworks = 'UIKit', 'Foundation', 'CoreGraphics'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'XLForm/XL/**/*.{h,m}'
    core.resource = 'XLForm/XLForm.bundle'
  end

  s.subspec 'AppExtension' do |ext|
    ext.source_files = 'XLForm/XL/**/*.{h,m}'
    ext.resource = 'XLForm/XLForm.bundle'
    ext.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'XL_APP_EXTENSIONS=1' }
  end
end
