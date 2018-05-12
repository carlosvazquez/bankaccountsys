module Uuid
  class GeneratorNumber
      def self.get_number(classcount)
          six_digit_rand + '000'+ ((classcount ) + 100000).to_s + six_digit_rand
      end
      def self.six_digit_rand
        ((SecureRandom.random_number(9e5) + 1e5).to_i).to_s
      end
  end
end
