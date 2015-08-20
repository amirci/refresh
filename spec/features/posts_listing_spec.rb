require 'rails_helper'

feature "Lists all the posts" do
  
  context 'When some posts exists in the database' do
    before :each do
      create_list :post, 10
    end

    it "lists all the posts" do
      visit '/posts'
      
      actual = all('.post').map { |node| node.find('.title').text }
      expected = Post.all.map(&:title)
      
      expect(actual).to eq expected
    end
  end
  
  context 'When no posts are available' do
    it 'shows an empty list message' do
      visit '/posts'
      
      actual = all('.post').map { |node| node.find('.title').text }
      
      expect(actual).to be_empty
    end
  end
end