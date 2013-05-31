Pod::Spec.new do |s|
  s.name         = "BSTDDUtilities"
  s.version      = "0.0.1"
  s.summary      = "Utilities to help with Test Driven Development."
  s.description  = <<-DESC
                   Utilities to help with Test Driven Development. Some Apple API's are not that friendly to this approach, the idea of this repository is to extend various classes to make TDD a little easier.
                   DESC
  s.homepage     = "https://github.com/tumatauenga/BSTDDUtilities"
  s.license      = { :type => 'MIT', :file => 'License.txt' }
  s.author       = { "Ben Smith" => "bensmith125@hotmail.com" }
  s.source       = { :git => "https://github.com/tumatauenga/BSTDDUtilities.git", :commit => "9ec2eac3339a7c33feb0689233e6bf85ab6ef299" }
  s.platform     = :ios, '3.2'
  s.source_files = 'BSTDDUtilities/GestureRecognizers/BSSwipeGestureRecognizer.{h,m}'
  s.requires_arc = true
end