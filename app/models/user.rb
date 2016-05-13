class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true, format: { with: /\S+@paytronix.com\z/, message: "must be of the domain paytronix.com.  You must not be cool enough to work there."}

  has_many :project_owners
  has_many :projects, through: :project_owners
end
