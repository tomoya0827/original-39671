require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe '新規コメント' do
    context '新規コメントできる場合' do
      it "全ての値が存在すればコメントできる" do
        expect(@comment).to be_valid
      end
    end
    context '新規コメントできない場合' do
      it "コメントが空では投稿できない" do
        @comment.comment = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Comment can't be blank")
      end

      it "コメントが30字を超えていては投稿できない" do
        @comment.comment = Faker::Lorem.sentence(word_count: 31)
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Comment is too long (maximum is 30 characters)")
      end

      it 'userが紐付いていなければコメントできない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("User must exist")
      end

      it 'postが紐付いていなければコメントできない' do
        @comment.post = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Post must exist")
      end
    end
  end
end
