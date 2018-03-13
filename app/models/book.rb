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
end
