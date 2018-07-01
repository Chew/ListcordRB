Gem::Specification.new do |s|
  s.name = 'listcordrb'
  s.version = '0.2.0'
  s.date = '2018-07-01'
  s.summary = 'ListCord API for Ruby'
  s.description = 'A Ruby library for the ListCord bot list (https://listcord.com) API.'
  s.authors = ['Chewsterchew']
  s.email = 'chew@chew.pw'
  s.files = Dir['lib/**/*.rb']
  s.homepage = 'http://github.com/Chewsterchew/ListCordRB'
  s.license = 'MIT'
  s.add_runtime_dependency 'rest-client', '~> 2.1.0.rc1'
  s.required_ruby_version = '>= 2.2.4'

  s.metadata = {
    'bug_tracker_uri' => 'https://github.com/Chewsterchew/ListCordRB/issues',
    'changelog_uri'   => 'https://github.com/Chewsterchew/ListCordRB/releases',
    'homepage_uri'    => 'http://github.com/Chewsterchew/ListCordRB',
    'source_code_uri' => 'http://github.com/Chewsterchew/ListCordRB',
    'wiki_uri'        => 'http://github.com/Chewsterchew/ListCordRB/wiki'
  }
end
