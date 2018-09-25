class Author < ActiveRecord::Base
    validates :name, length: { minimum: 2 }
    validates :email, uniqueness: true
    validates :name, presence: true
end
