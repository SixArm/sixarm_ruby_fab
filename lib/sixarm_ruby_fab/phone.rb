# -*- coding: utf-8 -*-

class Fab

  # Fab a random phone number string.
  # Delegates to Forgery::Address.phone.
  #
  # @returns [String] a random phone number string
  #
  def phone(options = {})
    Forgery::Address.phone
  end    

end
