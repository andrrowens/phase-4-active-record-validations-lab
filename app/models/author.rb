class Author < ApplicationRecord
    #validates all authors have a name
    validates :name, presence: true

    #validates no two authors have the same name
    validates :name, uniqueness: {case_sensative: true}

    #validates that phone number length is 10 numbers
    validates :phone_number, length: {is: 10, message: "%{value} should be 10 digits!"}
end
