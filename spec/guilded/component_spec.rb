require 'spec_helper'

describe Guilded::Component do

  let :component do
    described_class.new :flash_growler, :position => :bottom, :delay => 4000
  end

  it "should produce the correct javascript initializer" do
    component.javascript_initializer.should == "g.initFlashGrowler({\"position\":\"bottom\",\"delay\":4000});"
  end

end
