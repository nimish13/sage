Gem::Specification.new do |s|
  s.name          = 'sage'
  s.version       = '0.0.0'
  s.date          = '2018-11-29'
  s.summary       = "Sage API wrapper"
  s.description   = "Sage API wrapper"
  s.authors       = ["Nimish Gupta"]
  s.email         = 'nimishg13@gmail.com'
  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']

  s.add_runtime_dependency 'gyoku'
end
