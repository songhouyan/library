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
#  tags         :text             default([]), is an Array
#

class Book < ApplicationRecord
    belongs_to :user
    include PgSearch
    pg_search_scope :search, against: [:title, :author, :tags], using: {
        tsearch: {
            prefix: true
        }
    }
end
