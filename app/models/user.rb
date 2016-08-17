class User < ActiveRecord::Base
  has_secure_password

  has_many :workouts
  has_many :exercises, through: :workouts
  has_many :exercise_histories, through: :workouts


  validates_presence_of :firstname, :lastname, :email, :password_digest
  validates_uniqueness_of :email
end
