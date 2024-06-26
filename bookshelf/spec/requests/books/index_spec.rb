RSpec.describe "GET /books", type: [:request, :database] do
  let(:books) { app["persistence.rom"].relations[:books] }

  before do
    books.insert(title: "Practical Objecte-Oriented Design in Ruby", author: "Sandi Metz")
    books.insert(title: "Test Driven Development", author: "Kent Becke")
  end

  it "returns a list of books" do
    get "/books"

    expect(last_response).to be_successful
    expect(last_response.content_type).to eq("application/json; charset=utf-8")

    response_body = JSON.parse(last_response.body)

    expect(response_body).to eq([
        { "title" => "Test Driven Development"},
        { "title" => "Practical Object-Oriented Design in Ruby"}
    ])

  end
end
