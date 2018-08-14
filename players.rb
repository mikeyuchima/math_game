class Players
    attr_accessor :name, :lives
    MAX_LIFE = 3

    def initialize(name)
        @name = name
        @lives = MAX_LIFE
    end

    def dead?
        @lives = 0
    end

    def damaged()
        @lives -= 1
    end
end