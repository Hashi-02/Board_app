class Board < ApplicationRecord
    
    validates :user, {presence: true, length: {maximum: 30}}
    validates :type, {presence: true, length: {maximum: 30}}
    validates :title, {presence: true, length: {maximum: 30}}
    validates :content, {presence: true, length: {maximum: 300}}
    validates :user_id, {presence: true}

    self.inheritance_column = :_type_disabled 
end

def user
    return Borad.find_by(id: self.id) 
end