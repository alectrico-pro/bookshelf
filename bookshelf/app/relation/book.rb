module Bookshelf
  module Relations
    class Books <a Bookshelf::DB::Relation
      schema :books, infer: true
    end
  end
end

