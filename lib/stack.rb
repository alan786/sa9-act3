class Stack
    def initialize
      @data = []
    end
  
    def is_empty # chekcing if the list is empty
      @data.empty?
    end
  
    def push(value) # push the value to list
      @data.unshift(value)
    end
  
    def pop # remove the value in the list
      @data.shift
    end
  
    def to_s # print the list
      @data.to_s
    end
  end

