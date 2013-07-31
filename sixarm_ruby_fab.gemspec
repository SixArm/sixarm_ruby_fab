Gem::Specification.new do |s|

  SOURCES = [
    'agent',
    'basic',
    'company',
    'date',
    'datetime',
    'email',
    'files',
    'geo',
    'id',
    'internet',
    'locale',
    'mime',
    'names',
    'password',
    'phone',
    'postal',
    'text',
    'time',
    'twitter',
    'username',
    'uuid',
    'forgery/geo',
    'forgery/uri'
  ]

  s.name           = "sixarm_ruby_fab"
  s.summary        = "SixArm.com » Ruby » Fab gem to fabricate sample data for testing"
  s.description    = "Generate sample names, places, agents, tweets, etc."
  s.version        = "1.0.0"
  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["BSD", "GPL", "MIT", "PAL", "Various"]
  s.signing_key    = '/home/sixarm/keys/certs/sixarm-rsa1024-x509-private.pem'
  s.cert_chain     = ['/home/sixarm/keys/certs/sixarm-rsa1024-x509-public.pem']

  s.platform       = Gem::Platform::RUBY
  s.require_path   = 'lib'
  s.has_rdoc       = true

  top_files        = [".gemtest", "CONTRIBUTING.md", "Rakefile", "README.md", "VERSION"]
  lib_files        = ["lib/#{s.name}.rb"] + SOURCES.map{|x| "lib/#{s.name}/#{x}.rb"}
  test_files       = ["test/#{s.name}_test.rb"] + SOURCES.map{|x| "test/#{s.name}_test/#{x}_test.rb"}

  s.files          = top_files + lib_files + test_files
  s.test_files     = test_files

  s.add_dependency('forgery')

end
