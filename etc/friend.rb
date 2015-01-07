class Friend 
  def initialize(first, last)
    @first, @last = first, last
  end

  def fullname
    @last ||= "" # (@last || @last = "")
    "#{@last.upcase}, #{@first}"
  end

end
