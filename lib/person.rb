class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(value)
    end
    def happiness=(result)
        if result > 10
            @happiness = 10
        elsif result < 0
            @happiness = 0
        elsif result >= 0 && result <= 10
            @happiness = result
        end
    end
    def hygiene=(result)
        if result > 10
            @hygiene = 10
        elsif result < 0
            @hygiene = 0
        elsif result >= 0 && result <= 10
            @hygiene = result
        end
    end
    def happy?
        if @happiness > 7
            return true
        elsif @happiness <= 7
            return false
        end
    end
    def clean?
        if @hygiene > 7
            return true
        elsif @hygiene <= 7
            return false
        end
    end
    def get_paid(amount)
        if amount.class == Integer
        @bank_account = self.bank_account + amount
        end
        "all about the benjamins"
    end
    def take_bath
        self.hygiene=(@hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        return '♪ another one bites the dust ♫'
    end

    def call_friend(my_friend)
        self.happiness=(@happiness + 3)
        my_friend.happiness=(my_friend.happiness + 3)
        return "Hi #{my_friend.name}! It's #{self.name}. How are you?"
    end


    def start_conversation(my_friend, topic)
        if topic == "politics"
                self.happiness=(@happiness - 2)
                my_friend.happiness=(my_friend.happiness - 2)
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
                self.happiness=(@happiness + 1)
                my_friend.happiness=(my_friend.happiness + 1)
                if @happiness > 10
                    return self.happiness=(happiness)
                end
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end
