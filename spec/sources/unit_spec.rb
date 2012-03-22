require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Unit" do
  it_should_behave_like "SpecHelper" do
    before(:each) do
      setup_test_for Unit,'testuser'
    end

    it "should process Unit query" do
      pending
    end

    it "should process Unit create" do
      pending
    end

    it "should process Unit update" do
      pending
    end

    it "should process Unit delete" do
      pending
    end
  end  
end