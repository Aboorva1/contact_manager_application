class Contact < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone_number, presence: true, length: {is: 10}
    validates :email, presence: true
    validates :company_name, presence: true
    validates :birth_date, presence: true
    validates :address, presence: true
    has_one_attached :image
    paginates_per 2
end
