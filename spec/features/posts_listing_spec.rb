require 'rails_helper'

feature "Lists all the posts", js: true do
  
  before :each do
    
  end

  context 'When some posts exists in the database' do
    it "lists all the posts" do
      visit '/posts'
    end
  end
  
  context 'When no posts are available' do
    it 'shows an empty list message' do
    end
  end
end