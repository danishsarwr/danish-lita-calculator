module Lita
  module Handlers
    class Calculator < Handler
      # insert handler code here
	route /^add\s+(\d+)+\s+(\d+)$/i,
        :add,
        command: true,
        help: { 'add N M   ' => 'prints N + M' }
 

 route /^subtract\s+(\d+)+\s+(\d+)$/i,
        :subtract,
        command: true,
        help: { 'add N   ' => 'prints N + N' } 
route /^multiply\s+(\d+)+\s+(\d+)$/i,
        :multiply,
        command: true,
        help: { 'add N   ' => 'prints N + N' }

route /^divide\s+(\d+)+\s+(\d+)$/i,
        :divide,
        command: true,
        help: { 'add N   ' => 'prints N + N' }
      def add(response)
        n = response.matches.first.first
        n = Integer(n)
 	m = response.matches.first.last
	m = Integer(m)
        response.reply "#{n} + #{m} = #{n+m}"
      end

def subtract(response)
        n = response.matches.first.first
        n = Integer(n)
	m = response.matches.first.last
        m = Integer(m)
        response.reply "#{n} - #{m} = #{n-m}"
      end
def multiply(response)
        n = response.matches.first.first
        n = Integer(n)
  	m = response.matches.first.last
        m = Integer(m)
        response.reply "#{n} * #{m} = #{n*m}"
      end

def divide(response)
        n = response.matches.first.first
        n = Integer(n)
  	m = response.matches.first.last
        m = Integer(m)
        response.reply "#{n} / #{m} = #{n/m}"
      end

      Lita.register_handler(self)
    end
  end
end
