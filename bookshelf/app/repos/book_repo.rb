module Bookshelf
  module Repos
    class BookRepo < Bookshelf::DB::Repo
      def all_by_title
        books
          .select(:title, :author)
          .order(books[:title].asc)
          .to_a
      end
    end
  end
end

