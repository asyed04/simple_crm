class Customer < ApplicationRecord
  has_one_attached :image  # Allows customers to have an image attached

  # Validations
  validates :full_name, presence: true
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  validates :phone_number, numericality: { only_integer: true }, allow_blank: true
  validates :notes, length: { maximum: 500 }, allow_blank: true

  # Ensure Ransack works
  def self.ransackable_attributes(auth_object = nil)
    ["id", "full_name", "email_address", "phone_number", "notes", "created_at", "updated_at"]
  end
end
