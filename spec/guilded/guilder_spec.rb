require 'spec_helper'

describe Guilded::Guilder do

  let :guilder do
    subject
  end

  context "when there are components requiring javascript" do

    before :each do
      guilder.add Guilded::Component.new( :flash_growler, :position => :bottom )
    end

    it "should generate the correct javascript initializer" do
      guilder.javascript_initializer.should == "<script type=\"text/javascript\">\n//<![CDATA[\ng[\"data\"]={};var initGuilded = function(){g.initFlashGrowler({\"position\":\"bottom\"});};jQuery('document').ready(initGuilded);jQuery('body').trigger('guildedInitialized');\n//]]>\n</script>"
    end

  end

  context "when there are no components requiring javascript" do

    before :each do
      guilder.add Guilded::Component.new( :flash_growler, :has_javascript => false, :position => :bottom )
    end

    it "should generate the correct javascript initializer" do
      guilder.javascript_initializer.should == "<script type=\"text/javascript\">\n//<![CDATA[\ng[\"data\"]={};jQuery('body').trigger('guildedInitialized');\n//]]>\n</script>"
    end

    context "and there is no data to pass" do

      it "should generate the correct javascript initializer" do
        guilder.javascript_initializer.should == "<script type=\"text/javascript\">\n//<![CDATA[\ng[\"data\"]={};jQuery('body').trigger('guildedInitialized');\n//]]>\n</script>"
      end

    end

    context "and there is data to pass" do

      before :each do
        guilder.add_data :a => 1
      end

      it "should generate the correct javascript initializer" do
        guilder.javascript_initializer.should == "<script type=\"text/javascript\">\n//<![CDATA[\ng[\"data\"]={\"a\":1};jQuery('body').trigger('guildedInitialized');\n//]]>\n</script>"
      end

    end

  end

end
