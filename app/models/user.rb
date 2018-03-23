# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string           default(""), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  age                    :integer
#  gender                 :string
#  bio                    :text
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#  cover_file_name        :string
#  cover_content_type     :string
#  cover_file_size        :integer
#  cover_updated_at       :datetime
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :books, dependent: :destroy
  
  attr_accessor :login

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, with: VALID_EMAIL_REGEX
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, multiline: true

  has_attached_file :avatar, :styles => { :medium => "500x500>", :thumb => "100x100#" }, :default_url => ":style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_attached_file :cover, :styles => { :medium => "1810x375>", :thumb => "602x125#" }, :default_url => ":style/cover.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end
    
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { value: login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      conditions[:email].downcase! if conditions[:email]
      where(conditions.to_h).first
    end
  end

  def add_tags_to_books
    Book.all.each do | book|
      book.update!(tags: [Faker::Book.genre.downcase, Faker::Book.genre.downcase, Faker::Book.genre.downcase])
    end
  end
end
