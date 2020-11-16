class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_PASSWORD_REGEX =/\A[a-zA-Z0-9]+\z/
   
   validates :name, presence: true,length: {maximum: 15}
   validates :email, presence: true
   validates :password, presence: true, length: { minimum: 8, maximum: 32}
   
   has_secure_password
   
end
