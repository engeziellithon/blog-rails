class User < ApplicationRecord
         # Include default devise modules. Others available are:
         # :confirmable, :lockable, :timeoutable and :omniauthable
         devise :database_authenticatable, :registerable,
                :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { medium: "300x300", thumb: "100x100" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/  
   
  has_many :articles 
  has_many :comments     
  
  has_attached_file :avatar
  # Validate content type
  validates_attachment_content_type :avatar, content_type: /\Aimage/
  # Validate filename
  validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :avatar
  end
