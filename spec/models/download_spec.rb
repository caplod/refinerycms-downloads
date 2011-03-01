require 'spec_helper'

describe Download do

  def reset_download(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @download.destroy! if @download
    @download = Download.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_download
  end

  context "validations" do
    
    it "rejects empty title" do
      Download.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_download
      Download.new(@valid_attributes).should_not be_valid
    end
    
  end

end