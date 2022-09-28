class Contact < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates_uniqueness_of :phone_number, presence: true, length: {is: 10}
    validates_uniqueness_of :email, presence: true
    validates :company_name, presence: true
    validates :birth_date, presence: true
    validates :address, presence: true
    has_one_attached :image
    paginates_per 5
end
