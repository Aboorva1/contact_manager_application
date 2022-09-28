class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :image
  paginates_per 5
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
end
