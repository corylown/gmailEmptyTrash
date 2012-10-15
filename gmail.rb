require 'gmail'

username = 'corylown'
password = 'ehwhdkvtqealcdot'

Gmail.new(username, password) do |gmail|
    
    gmail.mailbox('[Gmail]/Trash').emails.each do |email|
        email.delete!
    end
    gmail.expunge
end
