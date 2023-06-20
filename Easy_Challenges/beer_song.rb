class BeerSong
  def self.verse(num)
    case num
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" +
      "Take one down and pass it around, #{num-1} bottles of beer on the wall.\n"
    end

  end

  def self.verses(num1, num2)
    results = ''
    num1.downto(num2) do |num|
      results += verse(num)
      results += "\n" unless num == num2
    end
    results
  end

  def self.lyrics
    verses(99, 0)
  end
end

#puts BeerSong.verses(2, 0)