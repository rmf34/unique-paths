require 'spec_helper'

describe 'UniquePaths' do
  include Rack::Test::Methods
  
  describe "#factorial" do
    it "should return 1 for 0!" do
      factorial(0).should eq 1
    end
    
    it "should return 1 for factorial 1" do
      factorial(1).should eq 1
    end
    
    it "should return 120 for factorial 5" do
      factorial(5).should eq 120
    end
    
    it "should return 2432902008176640000 for factorial 20" do
      factorial(20).should eq 2432902008176640000
    end
  end
  
  describe "#unique_paths_square" do
    xit
  end
  
  describe "#unique_paths" do
    xit
  end
  
  
end