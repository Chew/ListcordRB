Gem::Specification.new do |s|
  s.name = 'listcordrb'
  s.version = '0.4.0'
  s.date = '2018-08-03'
  s.summary = 'Listcord API for Ruby'
  s.description = 'A Ruby library for the Listcord bot list (https://listcord.com) API.'
  s.authors = ['Chewsterchew']
  s.email = 'chew@chew.pw'
  s.files = Dir['lib/**/*.rb']
  s.homepage = 'http://github.com/Chewsterchew/ListcordRB'
  s.license = 'MIT'
  s.add_runtime_dependency 'rest-client', '~> 2.1.0.rc1'
  s.required_ruby_version = '>= 2.2.4'

  s.metadata = {
    'bug_tracker_uri' => 'https://github.com/Chewsterchew/ListcordRB/issues',
    'changelog_uri'   => 'https://github.com/Chewsterchew/ListcordRB/releases',
    'homepage_uri'    => 'http://github.com/Chewsterchew/ListcordRB',
    'source_code_uri' => 'http://github.com/Chewsterchew/ListcordRB',
    'wiki_uri'        => 'http://github.com/Chewsterchew/ListcordRB/wiki'
  }
end
