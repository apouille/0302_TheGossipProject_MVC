
require 'rails_helper'

RSpec.describe Tag, type: :model do

  before(:each) do 
		@tag = FactoryBot.create(:tag)  	
  end

  it "has a valid factory" do
    expect(build(:tag)).to be_valid
  end

   describe "#title" do
     it { expect(@tag).to validate_presence_of(:title) }
  end
end

