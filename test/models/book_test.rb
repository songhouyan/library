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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
