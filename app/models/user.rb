class User < ActiveRecord::Base
  belongs_to :role
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :set_default_role
  private
  def set_default_role
    self.role ||= Role.find_by_name('user')
  end
end
