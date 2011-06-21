Gem::Specification.new do |s|
  s.name = 'mime_typer'
  s.version = '0.1'
  #s.date = '2011-06-21'
  s.summary = 'Simple and compact gem to look up MIME types based on your system\'s mime.types file or one you specify.'
  s.email = 'eric@ericmason.net'
  s.homepage = 'https://github.com/ericmason/mime_typer'
  s.has_rdoc = true
  s.authors = ["Eric Mason"]
  s.files = Dir.glob("{bin,lib}/**/*") + %w{Rakefile README.rdoc}
  s.requirements = ["none"]
  s.add_development_dependency "rspec"
  s.require_path = 'lib'
end
