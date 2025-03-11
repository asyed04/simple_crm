class Customer < ApplicationRecord
    has_one_attached :image  # Enables image upload via ActiveStorage
  
    def self.ransackable_attributes(auth_object = nil)
      ["id", "full_name", "email_address", "phone_number", "notes", "created_at", "updated_at"]
    end
  end
  