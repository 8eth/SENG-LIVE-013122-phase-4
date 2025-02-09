# Break Out Activity #1 - Creating / Implementing Associative Serializers

# ✅ Check your answers at 'localhost:3000/productions'

class ProductionSerializer < ActiveModel::Serializer
  
  # 1. Add attributes for "title", "genre", "description", "image", 
  # "director", "budget", "ongoing"
  attributes :titlem :genre, :description, :image, :director, :budget, :ongoing

  # 2. Add Active Record Macros to associate Productions with Many Tickets / Many Users

  has_many :tickets
  has_many :users

  # 3. Add a method (budget) that returns Production's budget as a floating point number
  # with only two digits following the decimal point (i.e., 10000.00)

  # NOTE => Try making use of string interpolation and "'%.2f' %" 
  # https://stackoverflow.com/a/2054227

  def budget
    "$#{ '%.2f' % object.budget }"
  end

  # 4. Add a method (ongoing) that returns "Actively Showing" if a Production's 
  # "ongoing" value is 'true' and "Not Showing" if a Production's "ongoing" value
  # is 'false'

  # NOTE => To simplify your code, try implementing a ternary operator.
  # https://www.rubyguides.com/2019/10/ruby-ternary-operator/

  def ongoing
    object.ongoing ? 'Actively Showing' : 'Not Showing'
  end

end
