require 'rails_helper'

  describe Image do
    describe '#create' do
      context 'can save' do
        it "is valid with image" do
          item = build(:item)
          image = build(:image)
          expect(image).to be_valid
        end
      end

      context 'can save' do
        it "is valid without a image" do
          item = build(:item)
          image = build(:image, image: "")
          image.valid?
          expect(image.errors[:image]).to include("を入力してください")
        end
      end
    end
  end
