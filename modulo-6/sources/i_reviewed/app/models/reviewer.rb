class Reviewer < ActiveRecord::Base
  #Con esto tenemos un attr_accesor para el atributo password
  has_secure_password

  has_many :books
end
