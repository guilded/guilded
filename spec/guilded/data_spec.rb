require 'spec_helper'

describe Guilded::Data do

  let :data do
    subject
  end

  context "when there is no data" do

    it "should output the correct javascript" do
      data.to_javascript.should == "g[\"data\"]={};"
    end

  end

  context "when there is data" do

    before :each do
      data.add :a => 1, :b => { :c => 3}
    end

    it "should output the correct javascript" do
      data.to_javascript.should == "g[\"data\"]={\"a\":1,\"b\":{\"c\":3}};"
    end

  end

end
