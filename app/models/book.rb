# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  title        :string
#  author       :string
#  comment      :text
#  availability :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  isbn         :string
#  user_id      :integer
#

class Book < ApplicationRecord
    belongs_to :user

    has_attached_file :cover, :styles => { :medium => "1400x2200>", :thumb => "210x330#" }, :default_url => ":style/book_cover.png"
    validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
end
