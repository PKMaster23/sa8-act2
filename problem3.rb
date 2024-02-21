class User
  def initialize
    @username = nil
  end

  def username=(new_username)
    if new_username.nil? || new_username.empty?
      raise ArgumentError, "Username cannot be empty or nil"
    end
    @username = new_username
  end

  def username
    @username
  end
end

user = User.new

begin
  user.username = ""
rescue ArgumentError => e
  puts "Error: #{e.message}"
end

begin
  user.username = nil
rescue ArgumentError => e
  puts "Error: #{e.message}"
end

user.username = "JohnDeer"

puts "Username: #{user.username}"
