class App
  module Views
    class Layout < Mustache
      def title 
        @title || ''
      end
    end
  end
end
