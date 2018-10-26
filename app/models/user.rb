class User < ActiveRecord::Base
  has_secure_password
  has_many :events
  validates :password_digest, presence:true
  validates :name, {presence:true, uniqueness:true}



  # def password
  #   @password ||= Password.new(password_digest)
  # end
  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_hash = @password
  # end
  # def self.find_by_credentials(username, password)
  #   user = User.find_by_username(username)
  #   user.try(:valid_password?, password) ? user : nil
  # end
  # def valid_password?(password)
  #   BCrypt::Password.new(self.password_digest).is_password?(password)
  # end
  # def password=(password)
  #  @password = password
  #  self.password_digest = BCrypt::Password.create(password)
  # end




end
