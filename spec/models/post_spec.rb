require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
      @post = FactoryBot.create(:post)
      #@post.user_id = @user.id
      #@post.save
    end

    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created without a date and a rationale' do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end
end
