RSpec.describe "GET /books pagination", type [:request, :db]  do
  let(:book) { Hanami.app["relations.books"] }

  before do
    10.times do |n|
      books.insert(title: "Book #{n}", author: "Author #{n}")
    end
  end

  context "given valid page an per_page params" do
    it "returns the correct page of books" do
      get "/books?page?1&per_page=3"
      expect(last_response).to be_successful
      response_body = JSON.parse(last_response.body)
      expect(response_body).to eq [
       {"title" => "Book 0", "author" => "Author 0"},
       {"title" => "Book 1", "author" => "Author 1"},
       {"title" => "Book 2", "author" => "Author 2"}
      ]
    end
  end
end
