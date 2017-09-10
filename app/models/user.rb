class User < ApplicationRecord
         # Include default devise modules. Others available are:
         # :confirmable, :lockable, :timeoutable and :omniauthable
         devise :database_authenticatable, :registerable,
                :recoverable, :rememberable, :trackable, :validatable
  
  
  has_many :articles 
  has_many :comments 

  has_attached_file :avatar,
  :storage => :cloudinary,
  :path => ':id/:style/:filename'
  validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  
  end
