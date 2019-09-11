class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :images, ImageUploader

  validate :any_present?

  def any_present?
    if %w(texts images).all?{|attr| self[attr].blank?}
      errors.add :base, "please post at least one field"
    end
  end

end
