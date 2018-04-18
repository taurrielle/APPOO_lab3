class User
  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def set_data(type, last_signed_in)
    @data = {type: type, last_signed_in: last_signed_in}
  end

  def get_data
    @data
  end
end