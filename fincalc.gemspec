Gem::Specification.new do |s|
  s.name               = "fincalc"
  s.version            = "0.0.1"
  s.default_executable = "fincalc"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hernan Velasquez"]
  s.date = %q{2012-11-07}
  s.description = %q{A simple financial calculator}
  s.email = %q{hernamvel@gmail.com}
  s.files = ["Rakefile", "lib/fincalc.rb","bin/hola"]
  s.test_files = ["test/test_fincalc.rb"]
  s.homepage = %q{http://rubygems.org/gems/fincalc}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{This is a small financial calculator.  You can calculate the NPV of a cashflows over the time!}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

