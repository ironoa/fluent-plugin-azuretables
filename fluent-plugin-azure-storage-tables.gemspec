# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-azure-storage-table"
  spec.version       = "0.0.3"
  spec.authors       = ["Donny Xia"]
  spec.email         = ["xiadong.main@gmail.com"]
  spec.summary       = "Fluentd plugin for Azure Tables Storage."
  spec.description   = "Fluentd plugin to add event record into Azure Tables Storage. This plugin is only for internal purpose and isn't for general usage"
  spec.homepage      = "https://github.com/Shell32-Natsu/fluent-plugin-azuretables"
  spec.licenses      = ["MIT"]
  spec.has_rdoc      = false

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd", '>= 0.14.10'
  spec.add_dependency "azure", '~> 0'
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.0"
end
