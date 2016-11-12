class User

  ACTIVE = 0
  INACTIVE = 1
  PENDING = 2

  attr_accessor :status

  [:active, :inactive, :pending].each do |method|
    define_method "#{method}?" do
      status == User.const_get(method.upcase)
    end
  end

end

user = User.new
user.status = 1

puts user.inactive?
#=> true
puts user.active?
#=> false
