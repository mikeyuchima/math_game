class Question
    attr_accessor :num1, :num2, :answer

    def initialize()
        @num1 = rand(0..20)
        @num2 = rand(0..20)
    end

    def answer
        @answer = @num1 + @num2
    end
end