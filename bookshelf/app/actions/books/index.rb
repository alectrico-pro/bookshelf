# frozen_string_literal: true

module Bookshelf
  module Actions
    module Books
      class Index < Bookshelf::Action
        include Deps["repos.book_repo"]

        def handle(*, response)
#          books = rom.relations[:books]
 #           .select(:title, :author)
 #           .order(:title)
 #           .to_a

            books = book_repo.all_by_title

          response.format = :json
         # response.body   = books.to_json
          response.body  = books.map(&:to_h).to_json
        end
      end
    end
  end
end
