# Break Out Activity #2 - Creating / Implementing Associative Serializers

# ✅ Check your answers at 'localhost:3000/tickets'

class TicketSerializer < ActiveModel::Serializer
  # 1. Add attributes for "price", "production", "user"
  attributes :price, :production, :user

  # 2. Add a method (production) that returns a Ticket's Production's "title"

  def production
    object.production.title
  end
  # 3. Add a method (user) that returns a Ticket's User's "name"

  def user
    object.user.name
  end

  # 4. Add a method (price) that returns a Ticket's "price"

  def price
    "$#{object.price.round(2)}"
  end
  
end
