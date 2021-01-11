def calculate_recipients
    recipients = SUBSCRIBERS
    SUBSCRIBERS.each { |sub| 
      UNSUBSCRIBED.each { |unsub|
      if sub == unsub 
        recipients.delete(sub)
      end 
      }  
  }
  return recipients
end

def print_recipients
    calculate_recipients().each { |sub|
        puts "#{sub}, "            
}
end

SUBSCRIBERS = ["rhona@grimes.info", "cedricschmidt@robel.io", "edmond@ko.org", "bryant@cummingsfisher.biz", "alverta@bernhard.name"]
UNSUBSCRIBED = ["cedricschmidt@robel.io", "alverta@bernhard.name"]


print_recipients