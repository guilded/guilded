require 'spec_helper'

describe Guilded::Rails::ViewHelpers do

  class Includer
    include Guilded::Rails::ViewHelpers
  end

  subject do
    Includer.new
  end

  context "when the environment is development" do

    before :each do
      Guilded.configure do |config|
        config.environment = :development
      end
    end

    it "should output the correct jquery include tag" do
      subject.jquery_include_tag.should == "<script source=\"assets/jquery-1.8.3.min\" type=\"text/javascript\" />"
    end

  end

  context "when the environment is production" do

    before :each do
      Guilded.configure do |config|
        config.environment = :production
        config.jquery_google_url_template = "https://ajax.googleapis.com/ajax/libs/jquery/{{version}}/jquery.min.js"
      end
    end

    it "should output the correct jquery include tag" do
      subject.jquery_include_tag.should == "<script source=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\" type=\"text/javascript\" />"
    end

  end

end
