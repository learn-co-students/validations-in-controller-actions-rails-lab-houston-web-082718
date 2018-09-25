class Author < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true, length: {minimum: 3}
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness: true

end
