class User < ApplicationRecord
    validates :name, {presence: true}
    validates :email, {presence: true, uniqueness: true, numericality: {only_integer: true}, length: { is: 6 }}
    validates :password, {presence: true}
end

def posts
    return Board.where(user_id: self.id)
end