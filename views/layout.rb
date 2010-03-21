class App
  module Views
    class Layout < Mustache
      def title 
        @title || ''
      end
      def html 
        @html || ''
      end
    end
  end
end
