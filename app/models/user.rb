class User < ActiveRecord::Base

    validates :name, :email, :password, presence: true
    validates :email, uniqueness: true
    
    validates :password, length: { in: 6..20 }

end
