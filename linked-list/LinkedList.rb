require 'pry'

class Node
    attr_reader :value
    attr_accessor :next

    def initialize(value)
        @value = value
        @next = nil
    end
end

class LinkedList
    attr_reader :head, :tail

    def initialize
        @head = nil
        @tail = nil
    end

    def append(value)
        new_node = Node.new(value)
        if @head
            @tail.next = new_node
            @tail = new_node
        else
            @head = @tail = new_node
        end
    end
end