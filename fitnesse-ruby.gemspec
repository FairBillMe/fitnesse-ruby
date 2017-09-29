Gem::Specification.new do |s|
  s.name = "fitnesse-ruby"
  s.version = "0.2.0"
  s.date = "2017-09-29"
  s.summary = "The fitnesse server packaged as a convenient gem (version 20161106)."
  s.email = "opensource@pivotallabs.com"
  s.homepage = "http://github.com/pivotalexperimental/fitnesse-ruby"
  s.description = "The fitnesse server packaged as a convenient gem."
  s.has_rdoc = true
  s.authors = ["Brian Takita"]
  files = [
    "README.markdown", "Rakefile", "fitnesse-ruby.gemspec", "bin/fitnesse",
    "lib/fitnesse.rb", "core/fitnesse.jar", "spec/example_wiki_root",
    "spec/functional/spec_helper.rb", "spec/functional/fitnesse_spec.rb"
  ]
  s.files = files
  s.executables = ['fitnesse']
  s.test_files = ["spec/functional/fitnesse_spec.rb"]
  s.rdoc_options = ["--main", "README.markdown"]
  s.extra_rdoc_files = ["CHANGES", "README.markdown"]
end
