class Pic < ApplicationRecord
  belongs_to :user

  has_attached_file :image, styles: { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>" },
                                  default_url: "/images/:style/missing.png",
                                  path: ":rails_root/public/images/:id/:style/:filename",
                                  url: "/images/:id/:style/:filename"
 validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  acts_as_votable
end
