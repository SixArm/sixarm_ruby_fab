# -*- coding: utf-8 -*-

class Fab

  # Fab a company name.
  # Delegates to Forgery::Name.company_name.
  #
  # @returns [String] a random company name
  #
  def company_name(options = {})
    Forgery::Name.company_name
  end

  # Fab a job title.
  # Delegates to Forgery::Name.job_title.
  #
  # @returns [String] a random company name
  #
  def job_title(options = {})
    Forgery::Name.job_title
  end

end
