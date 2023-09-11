require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '新規投稿' do
    context '新規投稿できる場合' do
      it "全ての値が存在すれば投稿できる" do
        expect(@post).to be_valid
      end
    end
    context '新規投稿できない場合' do
      it "画像が空では投稿できない" do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Image can't be blank")
      end

      it "対象年齢が空では投稿できない" do
        @post.target_age_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include("Target age can't be blank")
      end

      it "おすすめ理由が空では投稿できない" do
        @post.explanatory_text = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Explanatory text can't be blank")
      end

      it "おすすめ理由が100字を超えては投稿できない" do
        @post.explanatory_text = Faker::Lorem.sentence(word_count: 101)
        @post.valid?
        expect(@post.errors.full_messages).to include("Explanatory text is too long (maximum is 100 characters)")
      end

      it 'userが紐付いていなければ投稿できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("User must exist")
      end
    end
  end
end