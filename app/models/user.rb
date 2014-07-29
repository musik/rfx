class User < ActiveRecord::Base
  enum role: {user: 0, vip: 1, editor: 8, admin: 9}
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  def ae?
    admin? or editor?
  end
end
