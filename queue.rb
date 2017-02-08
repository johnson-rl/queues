require_relative 'singly_linked_list'

class Queue

  attr_reader :front, :contents

  def initialize(front=nil)
    @contents = SinglyLinkedList.new front
    @front = @contents.head
  end

  def enqueue element
    @contents.insert_at_start element
    @front = @contents.head
  end

  def dequeue
    @contents.remove_from_end
  end

  def inspect
    @contents.inspect
  end

  def empty?
    @contents.empty?
  end

end
