require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品の保存' do

    context "商品出品の保存ができる場合" do
      it "全てのカラムが揃っていれば登録できること" do
        @item = FactoryBot.build(:item)
        expect(@item).to be_valid
      end
    end

    context "商品出品の保存ができない場合" do
      it "画像が空だと保存できない" do
        @item.image = nil
        @item.valid?
         expect(@item.errors.full_messages).to include("画像を入力してください")
      end

      it "商品名が空だと保存できない" do
         @item.name = ""
         @item.valid?
         expect(@item.errors.full_messages).to include("商品名を入力してください")
      end
       
      it "商品の説明が空だと保存できない" do
        @item.text = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("商品の説明を入力してください")
      end
      it "カテゴリーが空だと保存できない" do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("カテゴリーは1以外の値にしてください")
      end
      it "商品の状態が空だと保存できない" do
        @item.item_condition_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("商品の状態は1以外の値にしてください")
      end
      
      it "発送元の地域が空だと保存できない" do
        @item.country_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("発送元の地域は1以外の値にしてください")
      end
      
      it 'ユーザーが紐付いていなければ投稿できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('ユーザーを入力してください')
      end
    end
  end
end
