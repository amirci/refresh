require 'rails_helper'

RSpec.describe Post, type: :model do

  it "has a valid factory" do
    expect(build(:post)).to be_valid
  end
    
  let(:post) { build :post }
  
  describe "ActiveModel validations" do
    it { expect(post).to validate_presence_of(:title) }  
  end
    
end
