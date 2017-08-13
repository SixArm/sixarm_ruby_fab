# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_fab"
  s.summary        = "SixArm.com » Ruby » Fab gem to fabricate sample data for testing"
  s.description    = "Generate sample names, places, agents, tweets, etc."
  s.version        = "1.0.2"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["Apache-2.0", "Artistic-2.0", "BSD-3-Clause", "GPL-3.0", "MIT", "MPL-2.0"]

  s.signing_key    = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-private.pem"
  s.cert_chain     = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"
  s.has_rdoc       = true

  s.files = [
    "Rakefile",
    "lib/sixarm_ruby_fab.rb",
    "lib/sixarm_ruby_fab/agent.rb",
    "lib/sixarm_ruby_fab/basic.rb",
    "lib/sixarm_ruby_fab/company.rb",
    "lib/sixarm_ruby_fab/date.rb",
    "lib/sixarm_ruby_fab/datetime.rb",
    "lib/sixarm_ruby_fab/email.rb",
    "lib/sixarm_ruby_fab/files.rb",
    "lib/sixarm_ruby_fab/geo.rb",
    "lib/sixarm_ruby_fab/id.rb",
    "lib/sixarm_ruby_fab/internet.rb",
    "lib/sixarm_ruby_fab/locale.rb",
    "lib/sixarm_ruby_fab/mime.rb",
    "lib/sixarm_ruby_fab/names.rb",
    "lib/sixarm_ruby_fab/password.rb",
    "lib/sixarm_ruby_fab/phone.rb",
    "lib/sixarm_ruby_fab/postal.rb",
    "lib/sixarm_ruby_fab/text.rb",
    "lib/sixarm_ruby_fab/time.rb",
    "lib/sixarm_ruby_fab/twitter.rb",
    "lib/sixarm_ruby_fab/username.rb",
    "lib/sixarm_ruby_fab/uuid.rb",
    "lib/sixarm_ruby_fab/forgery/geo.rb",
    "lib/sixarm_ruby_fab/forgery/uri.rb",
  ]

  s.test_files = [
    "test/sixarm_ruby_fab_test.rb",
    "test/sixarm_ruby_fab_test/agent_test.rb",
    "test/sixarm_ruby_fab_test/basic_test.rb",
    "test/sixarm_ruby_fab_test/company_test.rb",
    "test/sixarm_ruby_fab_test/date_test.rb",
    "test/sixarm_ruby_fab_test/datetime_test.rb",
    "test/sixarm_ruby_fab_test/email_test.rb",
    "test/sixarm_ruby_fab_test/files_test.rb",
    "test/sixarm_ruby_fab_test/geo_test.rb",
    "test/sixarm_ruby_fab_test/id_test.rb",
    "test/sixarm_ruby_fab_test/internet_test.rb",
    "test/sixarm_ruby_fab_test/locale_test.rb",
    "test/sixarm_ruby_fab_test/mime_test.rb",
    "test/sixarm_ruby_fab_test/names_test.rb",
    "test/sixarm_ruby_fab_test/password_test.rb",
    "test/sixarm_ruby_fab_test/phone_test.rb",
    "test/sixarm_ruby_fab_test/postal_test.rb",
    "test/sixarm_ruby_fab_test/text_test.rb",
    "test/sixarm_ruby_fab_test/time_test.rb",
    "test/sixarm_ruby_fab_test/twitter_test.rb",
    "test/sixarm_ruby_fab_test/username_test.rb",
    "test/sixarm_ruby_fab_test/uuid_test.rb",
    "test/sixarm_ruby_fab_test/forgery/geo_test.rb",
    "test/sixarm_ruby_fab_test/forgery/uri_test.rb",
  ]

  s.add_dependency('forgery', '>= 0.60', '< 999')

  s.add_development_dependency('minitest', '>= 5.7.0', '< 6')
  s.add_development_dependency('sixarm_ruby_minitest_extensions', '= 1.0.5')
  s.add_development_dependency('rake', '> 10.4.2', '< 11')
  s.add_development_dependency('simplecov', '>= 0.10.0', '< 2')
  s.add_development_dependency('coveralls', '>= 0.8.2', '< 2')

end
