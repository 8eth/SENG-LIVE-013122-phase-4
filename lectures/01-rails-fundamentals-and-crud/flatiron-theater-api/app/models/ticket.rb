class Ticket < ApplicationRecord
    
    # BREAK OUT ACTIVITY #1 - Adding Active Record Associations
    
    # 1. Generate Migration for Ticket with Necessary Foreign Keys
    
    # 2. Add Active Record Associations
    # Ticket "belongs_to" Production
    # Ticket "belongs_to" User
    belongs_to :production
    belongs_to :user
end