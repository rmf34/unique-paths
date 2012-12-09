require 'spec_helper'

describe App do
  include Rack::Test::Methods
  
  it "should respond to GET /" do
    get '/'
    last_response.should be_ok
  end
  
  context "POST /square" do
    before(:each) do
      post '/square', params = { :number => 5 }      
    end
    
    it "should respond OK" do
      last_response.should be_ok
    end
    
    it "should return the correct value" do
      last_response.should =~ /252/
    end
  end
  
  context "POST /rectangle" do
    before(:each) do
      post '/rectangle', params = { :x => 4, :y => 5}      
    end
    
    it "should respond OK" do
      last_response.should be_ok
    end
    
    it "should return the correct value" do
      last_response.should =~ /126/
    end
  end
  
end