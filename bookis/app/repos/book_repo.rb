# frozen_string_literal: true

module Bookis
  module Repos
    class BookRepo < Bookis::DB::Repo
      def all_by_title(page:, per_page:)
        books
          .select(:title, :author)
          .order(books[:title].asc)
          .page(page)
          .per_page(per_page)
          .to_a
      end
    end
  end
end
