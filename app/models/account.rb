class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  def email_required?
      true
  end
    
  def password_required?
      new_record? ? false : super
  end

  def saved_change_to_encrypted_password?
      false
  end
  
end
