require 'spec_helper'

describe Guilded::Rails::ViewHelpers do

  class Includer
    include Guilded::Rails::ViewHelpers

    # stub raw
    def raw( str )
      str
    end
  end

  subject do
    Includer.new
  end

  context "when the environment is development" do

    before :each do
      Guilded.configure do |config|
        config.environment = :development
        config.jquery_version = '1.8.3'
      end
    end

    it "should output the correct jquery include tag" do
      subject.jquery_include_tag.should == "<script src=\"/assets/jquery-1.8.3.js\" type=\"text/javascript\"></script>"
    end

  end

  context "when the environment is production" do

    before :each do
      Guilded.configure do |config|
        config.environment = :production
        config.jquery_google_url_template = "https://ajax.googleapis.com/ajax/libs/jquery/{{version}}/jquery.min.js"
        config.jquery_version = '1.8.3'
      end
    end

    it "should output the correct jquery include tag" do
      subject.jquery_include_tag.should == "<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\" type=\"text/javascript\"></script>"
    end

  end

end
