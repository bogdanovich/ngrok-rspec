require 'spec_helper'

describe Ngrok::Rspec do
  
  context "without ngrok" do
    it "should have default app_host" do
      app_host = Capybara.app_host
      expect(app_host).to be_nil
    end
  end

  context "with ngrok", ngrok: true do
    it "should have ngrok app_host" do
      expect(Capybara.app_host =~ /ngrok.com$/).to_not be_nil 
    end
  end

  context "after ngrok" do
    it "should have default app host" do
      expect(Capybara.app_host =~ /ngrok.com$/).to be_nil 
    end
  end

end