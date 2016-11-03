module GreeterHelper
  def formatted_time(time)
    #Formateador AM/PM
    time.strftime("%I:%M:%p")
  end
end
