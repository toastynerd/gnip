require "httparty"

Dir[File.dirname(__FILE__) + '/gnip/*.rb'].each do |file| 
  require file
end
