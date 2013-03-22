require 'spec_helper'

describe Guilded::Guilder do

  let :guilder do
    subject
  end

  describe "#component?" do

    context "when there is a component already in existence" do

      before :each do
        guilder.add :flash_growler
      end

      it "should agree that the component is already defined" do
        guilder.component?( :flash_growler ).should be_true
      end

    end

    context "when there is not a component already in existence" do

      before :each do
        guilder.add :flash_growler
      end

      it "should agree that the component is already defined" do
        guilder.component?( :scroll_to ).should be_false
      end

    end

  end

  context "when there are components requiring javascript" do

    before :each do
      guilder.add :flash_growler, :position => :bottom
    end

    it "should generate the correct javascript initializer" do
      guilder.javascript_initializer.should == "<script type=\"text/javascript\">\n//<![CDATA[\ng[\"data\"]={};var initGuilded = function(){g.initFlashGrowler({\"position\":\"bottom\"});};jQuery('document').ready(initGuilded);jQuery('body').trigger('guildedInitialized');\n//]]>\n</script>"
    end

  end

  context "when there are no components requiring javascript" do

    before :each do
      guilder.add :flash_growler, :has_javascript => false, :position => :bottom
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
