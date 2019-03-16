require 'rails_helper'

describe Item do
  describe '#create' do
    context 'can save' do
      it "is valid with a name" do
        cat = build(:category)
        item = build(:item)
        expect(item).to be_valid
      end
    end

    context 'can not save' do
      it "is invalid without a name" do
        item = build(:item, name: "")
        item.valid?
        expect(item.errors[:name]).to include("を入力してください")
      end
      
      it "is invalid without a text" do
        item = build(:item, text: "")
        item.valid?
        expect(item.errors[:text]).to include("を入力してください")
      end

      it "is invalid without a status" do
        item = build(:item, status: "")
        item.valid?
        expect(item.errors[:status]).to include("を入力してください")
      end

      it "is invalid without a shipping_cost" do
        item = build(:item, shipping_cost: "")
        item.valid?
        expect(item.errors[:shipping_cost]).to include("を入力してください")
      end

      it "is invalid without a shipping_method" do
        item = build(:item, shipping_method: "")
        item.valid?
        expect(item.errors[:shipping_method]).to include("を入力してください")
      end

      it "is invalid without a prefectures" do
        item = build(:item, prefectures: "")
        item.valid?
        expect(item.errors[:prefectures]).to include("を入力してください")
      end

      it "is invalid without a ship_date" do
        item = build(:item, ship_date: "")
        item.valid?
        expect(item.errors[:ship_date]).to include("を入力してください")
      end

      it "is invalid without a price" do
        item = build(:item, price: "")
        item.valid?
        expect(item.errors[:price]).to include("を入力してください")
      end
    end
  end
end
