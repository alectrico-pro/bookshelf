# frozen_string_literal: true

RSpec.describe "Root", type: :request do
  it "is successful" do
    get "/"

    # Generate new action via:
    #   `bundle exec hanami generate action home.index --url=/`
#    expect(last_response.status).to be(404)
    expect(last_response.body).to include "Welcome to Bookshelf"
    expect(last_response).to be_successful
  end
end
