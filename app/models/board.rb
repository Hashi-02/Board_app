class Board < ApplicationRecord
    
    validates :user, {presence: true, length: {maximum: 30}}
    validates :type, {presence: true, length: {maximum: 30}}
    validates :title, {presence: true, length: {maximum: 30}}
    validates :content, {presence: true, length: {maximum: 300}}

    self.inheritance_column = :_type_disabled 

end
