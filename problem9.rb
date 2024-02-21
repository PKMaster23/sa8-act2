class Camera
  def initialize
    @status = "OFF"
  end

  def turn_on
    @status = "ON"
    puts "The camera is now ON."
  end

  def turn_off
    @status = "OFF"
    puts "The camera is now OFF."
  end

  def current_status
    puts "The current camera status is: #{@status}"
  end
end

camera = Camera.new

camera.current_status

camera.turn_on

camera.current_status

camera.turn_off

camera.current_status
