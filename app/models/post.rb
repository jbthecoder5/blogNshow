class Post < ApplicationRecord
  belongs_to :user
  validates :title,
            presence: true
  validates :body,
            presence: true


  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
