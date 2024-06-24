module Eco
 module Actions
    module Home
      class Show < Eco::Action
        def handle(request, response)
          request.params[:id]
        end
      end
    end
  end
end
