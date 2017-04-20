# require "rubotirc/version"
# require "rubotirc/bender"
require "cinch"

module Rubotirc
    class Greeter
        include Cinch::Plugin
    
        match /hello$/, method: :greet
        def greet(m)
          m.reply "Hi there"
        end
    end
    
    bot = Cinch::Bot.new do
        configure do |c|
            c.nick = "Bender"
            c.server = "127.0.0.1"
            c.channels = ["#Gecko", "#Agora"]
            c.plugins.plugins = [Greeter]
        end
    end

    bot.start

end
