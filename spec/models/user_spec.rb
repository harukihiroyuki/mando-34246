require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー新規登録" do
    before do
      @user = FactoryBot.build(:user)
    end
    context "新規登録がうまくいく時" do
      it 'passwordが6文字以上であれば登録できること' do
        @user.password = 'a123456'
        @user.password_confirmation ='a123456'
        expect(@user).to be_valid   
      end
      it "全てのカラムが揃っていれば登録できること" do
        @user = FactoryBot.build(:user)
        expect(@user).to be_valid
      end
    end
   context "新規登録がうまくいかない時" do
      it "passwordは全角では登録できない" do
        @user.password = "アイウエオ１"
        @user.password_confirmation = "アイウエオ１"
        @user.valid?
        expect(@user.errors.full_messages).to include( "パスワードを入力してください" )
      end
      it "passwordは英語のみでは登録できない" do
        @user.password = "aiueoe"
        @user.password_confirmation = "aiueoe"
        @user.valid?
        expect(@user.errors.full_messages).to include( "パスワードを入力してください" )
      end

      it "firstnameは漢字平仮名カタカナ以外では登録できない" do
      @user.firstname = "aiueo"
      @user.valid?
        expect(@user.errors.full_messages).to include("名前は全角で入力してください" )
      end

      it "lastnameは漢字平仮名カタカナ以外では登録できない" do
        @user.lastname = "aiueo"
        @user.valid?
        expect(@user.errors.full_messages).to include("苗字は全角で入力してください" )
      end
  

      it "nameが空だと登録できない" do
        @user.name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end
      it "emailが空では登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it "passwordが空だと登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end

      it 'passwordが5文字以下であれば登録できないこと' do
        @user.password ='11bbb'
        @user.password_confirmation ='11bbb'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end

      it 'passwordとpassword_confirmationが不一致では登録できないこと' do
        @user.password ='123456'
        @user.password_confirmation ='1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it '重複したemailが存在する場合登録できないこと' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end

      it "lastnameが空だと登録できない" do
        @user.lastname =""
        @user.valid?
        expect(@user.errors.full_messages).to include("苗字は全角で入力してください")
      end
      it "firstnameが空だと登録できない" do
        @user.firstname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("名前は全角で入力してください")
      end
      it "birthdayが空だと登録できない" do
        @user.birthday = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("誕生日を入力してください")
      end
      it "passwordが数字のみでは登録できない" do
        @user.password = "123456"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end

      it "emailに@が含まれていなければ登録できない" do
        @user.email = "harukihiroyuki.com"
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールは不正な値です")
      end
    end
  end
end
