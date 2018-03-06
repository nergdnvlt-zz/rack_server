require 'rack'

# Building my first sinatra rack
class PersonalSite
  def self.call(env)
    # This array includes the status code, response headers, and body
    ['200', { 'Content-Type' => 'text/html' }, [File.read('./app/views/index.html')]]
  end
end
