module LaserBots
    class Player
        attr_reader :name
        def initialize(name)
            @name = name
        end
    end
end
prima = LaserBots::Player.new("tsofa")
puts prima.name