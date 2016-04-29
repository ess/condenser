require 'simplecov'
SimpleCov.coverage_dir 'coverage/features'
SimpleCov.minimum_coverage 95
SimpleCov.start do
  add_filter '/spec/'
  add_filter '/features/'
  add_filter '/mock/'
  add_group 'Libraries', 'lib'
  add_group 'App', 'lib/condenser/app'
end

require 'aruba/cucumber'
require 'factis/cucumber'
require 'condenser'
require 'condenser/version'
require 'condenser/app'

EXE_DIR = File.expand_path(File.join(File.dirname(__FILE__), '/../../exe'))
LIB_DIR = File.join(File.expand_path(File.dirname(__FILE__)),'..','..','lib')

Aruba.configure do |config|
  config.command_search_paths = config.command_search_paths << EXE_DIR
  config.home_directory = File.join(config.root_directory, config.working_directory)
  config.command_launcher = :in_process
  config.main_class = Condenser::App::Main
end

Before do
  @original_rubylib = ENV['RUBYLIB']
  ENV['RUBYLIB'] = LIB_DIR + File::PATH_SEPARATOR + ENV['RUBYLIB'].to_s
end

After do
  ENV['RUBYLIB'] = @original_rubylib
end
