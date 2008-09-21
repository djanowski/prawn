# encoding: utf-8

puts "Prawn specs: Running on Ruby Version: #{RUBY_VERSION}"

require "rubygems"
require "test/spec"                                                
require "mocha"
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib') 
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'vendor','pdf-inspector','lib')
require "prawn"

gem 'pdf-reader', ">=0.7.3"
require "pdf/reader"          
require "pdf/inspector"

require "validate_options/spec"

def create_pdf
  @pdf = Prawn::Document.new(:left_margin   => 0,
                             :right_margin  => 0,
                             :top_margin    => 0,
                             :bottom_margin => 0)
end    

ValidateOptions.enable!

Test::Unit::TestCase.send(:include, ValidateOptions::Spec::Matchers)
