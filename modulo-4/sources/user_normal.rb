class User

  ACTIVE = 0
  INACTIVE = 1
  PENDING = 2

  attr_accessor :status

  def active?
    status == ACTIVE
  end

  def inactive?
    status == User::INACTIVE
  end

  def pending?
    status == User::PENDING
  end

end

user = User.new
user.status = 1

puts user.inactive?
#=> true
puts user.active?
#=> false
