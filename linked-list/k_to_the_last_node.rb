# https://www.interviewcake.com/question/ruby/kth-to-last-node-in-singly-linked-list
# Write a method kth_to_last_node()
# that takes an integer k and the head_node of a singly-linked list,
# and returns the kth to last node in the list.

class LinkedListNode
    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next  = nil
    end
end

a = LinkedListNode.new("Angel Food")
b = LinkedListNode.new("Bundt")
c = LinkedListNode.new("Cheese")
d = LinkedListNode.new("Devil's Food")
e = LinkedListNode.new("Eccles")

a.next = b
b.next = c
c.next = d
d.next = e

def kth_to_last_node(k, head_node)
    list_length = 1
    current_node = head_node

    while current_node = current_node.next # loop breaks on nil
        list_length += 1
    end

    n = list_length - k
    current_node = head_node
    
    n.times do
        current_node = current_node.next
        i += 1
    end
end

kth_to_last_node(4, a)