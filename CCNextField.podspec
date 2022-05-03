Pod::Spec.new do |s|
  s.name             = 'CCNextField'
  s.version          = '0.1.1'
  s.swift_version    = '5.0'
  s.summary          = 'An easy to use extension to go to the next UITextField.'
  s.description      = <<-DESC
'CCNextField is an an extension to UIKITs UITextField with an easy usage to handle switching to the next UITextField when tapping the return key.'
                        DESC

  s.homepage         = 'https://github.com/HiConceit/CCNextField'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Conceit LLC' => 'open-source@conceit.sa' }
  s.source           = { :git => 'https://github.com/HiConceit/CCNextField.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/HiConceit'

  s.ios.deployment_target = '13.0'

  s.source_files = 'Source/*.swift'
  
end
