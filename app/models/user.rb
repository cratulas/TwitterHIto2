class User < ApplicationRecord
  paginates_per 50
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_many :tweets , dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :friends, dependent: :destroy
  

  scope :users_for_me, -> (friends){ where('id IN (?)', friends) }
  scope :users_for_nothing, -> (friends){ where.not('id IN (?)', friends) }




  def to_s
    email
  end

  
  
end
