class Pangram
  ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

  def self.pangram?(sentence)
    ALPHABET.all? { |letter| sentence.downcase.scan(/[a-z]/).include?(letter) }
  end
end



