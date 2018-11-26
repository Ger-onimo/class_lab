class Students

attr_accessor :name,:cohort

  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def talk
    return 'I can talk!'
  end

  def favourite_lang(lang)
    return "I love #{lang}!"
  end
end
