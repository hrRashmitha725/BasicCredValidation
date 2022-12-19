Pod::Spec.new do |spec|
  spec.name         = "BasicCredValidation"
  spec.version      = "1.0.0"
  spec.summary      = "BasicValidation frame work is powerfull framework for validation"

  spec.description  = "BasicValidation frameworks provide fast and easy way to validate of basic credentials"
  spec.homepage     = "https://github.com/hrRashmitha725/BasicCredValidation"
  spec.license      = "MIT"
 
  spec.author             = { "hrRashmitha257" => "rashmithahr777@gmail.com" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/hrRashmitha725/BasicCredValidation.git", :tag => spec.version.to_s }
  spec.source_files  = "BasicCredValidation/**/*.{swift}"
  spec.swift_version = "5.0"
end
