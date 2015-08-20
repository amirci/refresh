require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:post) { Post.new }
  
  it { expect(post).to validate_presence_of(:title) }  
    
end
