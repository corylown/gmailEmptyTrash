# Require ruby-gmail gem
require 'gmail'


username = ''
password = ''


# Add expunge method to Gmail class of ruby-gmail gem
class Gmail
    def expunge
        @imap.expunge
    end
end


# Intantiate new Gmail instance with credentials
Gmail.new(username, password) do |gmail|

    # Mark each email in Trash as deleted
    gmail.mailbox('[Gmail]/Trash').emails.each do |email|
        email.delete!
    end
    
    # Expunge emails marked as deleted (This is permanent!)
    gmail.expunge
end
