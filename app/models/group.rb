class Group < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :messages
  has_many :group_users
  has_many :users, through: :group_users


  def is_owned_by?(user)
    owner.id == user.id
  end
end
