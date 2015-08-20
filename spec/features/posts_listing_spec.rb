require 'rails_helper'

feature "Lists all the posts" do
  
  before :each do
    
  end

  context 'When some posts exists in the database' do
    it "lists all the posts" do
      visit '/posts'
      
      posts = all('.post')
      
      expect(posts).to_not be_empty
    end
  end
  
  context 'When no posts are available' do
    it 'shows an empty list message' do
    end
  end
end