=begin
------Problem-------
Input: integer
Output:
Goals:

-----Explicit Rules-----
- 
-----Implicit Rules-----
- 
-----Edge Cases---------
-----Questions----------

-----Examples/Test Cases---

-----Data Structures-------

-----Algorithm----------
High-Level:

Low-Level:

=end

class Element
  attr_reader :datum, :next

  def initialize(datum, next_element = nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    @next.nil?
  end

end

class SimpleLinkedList
  attr_reader :head
  
  def initialize
    
  end

  def size
    count = 0
    current_element = head
    while current_element
      count += 1
      current_element = current_element.next
    end
    count
  end

  def empty?
    @head.nil?
  end

  def peek
    @head.datum if @head
  end

  def self.from_a(array)
    array = [] if array.nil?
    list = SimpleLinkedList.new
    array.reverse.each do |datum|
      list.push(datum)
    end
    list
  end

  def to_a
    results = []
    current_element = @head
    while !current_element.nil?
      results << current_element.datum
      current_element = current_element.next
    end
    results
  end

  def push(datum)
    new_element = Element.new(datum, @head)
    @head = new_element
  end

  def head
    @head ? @head : nil
  end

  def pop
    temp = @head
    @head = temp.next
    temp.datum
  end

  def reverse
    reverse_list = SimpleLinkedList.new
    current_element = @head
    while !current_element.nil?
      reverse_list.push(current_element.datum)
      current_element = current_element.next
    end
    p reverse_list

  end
end