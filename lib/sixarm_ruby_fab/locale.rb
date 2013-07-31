class Fab

  LANGUAGE_CODE_ISO6391_LIST = [
    'en',  # English
    'fr',  # French
    'de',  # German
    'ja',  # Japanese
  ]

  attr_accessor :language_code_iso6391_list

  # Fab a language code e.g. "en" for English.
  # Delegates to #language_code_iso6391
  #
  # @returns [String] a random language code
  #
  def language_code(options = {})
    language_code_iso6391(options)
  end

  # Fab a language code e.g. "en" for English.
  # Samples from LANGUAGE_CODE_ISO6391_LIST.
  #
  # @returns [String] a random language code
  #
  def language_code_iso6391(options = {})
    LANGUAGE_CODE_ISO6391_LIST.sample
  end

  def language_code_iso6391_list
    @language_code_iso6391_list ||= LANGUAGE_CODE_ISO6391_LIST
  end

end
