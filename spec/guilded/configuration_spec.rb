require 'spec_helper'

describe Guilded::Configuration do

  subject { Guilded.configuration }

  before :each do
    Guilded.configure do |config|
      config.environment    = :production
      config.jquery_version = '1.8.3'
    end
  end

  it "should have the correct value for environment" do
    subject.environment.should == :production
  end

  it "should have the correct value for jquery_verison" do
    subject.jquery_version.should == '1.8.3'
  end

  context "when the jquery_google_url_template is not overridden" do

    it "should have the correct value for the jquery_google_url_template" do
      subject.jquery_google_url_template.should == "https://ajax.googleapis.com/ajax/libs/jquery/{{version}}/jquery.min.js"
    end

  end

  context "when the jquery_google_url_template is overridden" do

    before :each do
      Guilded.configure do |config|
        config.jquery_google_url_template = "something"
      end
    end

    it "should have the correct value for the jquery_google_url_template" do
      subject.jquery_google_url_template.should == "something"
    end

  end

  it "should have return the correct value for jquery_google_url" do
    subject.jquery_google_url( '1.8.3' ).should == "https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"
  end

  describe "#local_jquery_name" do

    context "when min version is requested" do

      it "should return the correct value" do
        subject.local_jquery_name( '1.8.3', true ).should == "assets/jquery-1.8.3.min"
      end

    end

    context "when uncompressed version is requested" do

      it "should return the correct value" do
        subject.local_jquery_name( '1.8.3', false ).should == "assets/jquery-1.8.3"
      end

    end

  end

end
