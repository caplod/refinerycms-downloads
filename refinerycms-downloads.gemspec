Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-downloads'
  s.version           = '0.1.0'
  s.description       = 'Ruby on Rails Downloads engine for Refinery CMS. '
  s.date              = %q{#{Time.now.strftime('%Y-%m-%d')}}
  s.summary           = 'Private Downloads engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
  s.email             = %q{stefan@tan3.de} 
  s.homepage          = %q{http://tan3.de}
  s.authors           = ['Stefan Mielke']
end
