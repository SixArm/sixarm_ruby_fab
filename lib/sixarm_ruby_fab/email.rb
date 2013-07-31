class Fab

  # Fab an email address.
  # Delegate to Forgery::Email.address
  #
  # @returns [String] an email address
  #
  def email_address
    Forgery::Email.address
  end

end
