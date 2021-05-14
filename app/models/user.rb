class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tickets, foreign_key: :attendee_id
  has_many :attended_events, through: :tickets, source: :event
  has_many :events, foreign_key: :host_id
end
