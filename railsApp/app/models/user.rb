class User < ActiveRecord::Base
has_secure_password

has_one :room 
has_many :Reviews, dependent: :destroy
has_many :Endorsements, dependent: :destroy

validates :username, uniqueness: true
validates :username, :name, :email, :phone, presence:true
validates :email, uniqueness: true
validates :gender, inclusion: { in: %w(male female),
    message: "%{value} is not a valid gender" }
end
