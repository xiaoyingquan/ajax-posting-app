class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts

  has_many :likes, :dependent => :destroy
  has_many :liked_posts, :through => :likes, :source => :post

  has_many :collections, :dependent => :destroy
  has_many :collectiond_posts, :through => :collections, :source => :post

  def display_name
    # # 取 email 的前半来显示，如果你也可以另开一个字段是 nickname 让用户可以自己编辑显示名称
    self.email.split("@").first
  end

  def is_admin?
    role == "admin"
  end
end
