RSpec.describe Bookshelf::Operations::SendWelcomeEmail, "#call" do
  subject(:send_welcome_email){
     described_class.new(email_client: email_client, welcome_email: welcome_email
  }

  let(:email_client) {double(:email_client)}
  let(:welcome_email) {double(:welcome_email) }

  before do
    allow(welcome_email).to receive(:render_text).and_return("Welcome to Bookshelf Ada!")
    allow(welcome_email).to receive(:render_html).and_return("<p>Welcome to Bookshelf Ada! </p>")

    it "sends a welcome email" do
      expect(email_client).to receive(:deliver).with (
       to: "ada@example.com",
       subject: "Welcome!",
       text_body: "Welcome to Boookshelf Ada!",
       html_body: "<p>Welcome to Bookshelf Ada!</p>"
      )
      
      send_welcome_email.call(name: "Ada", email_adress: "ada@example.com")
    end
  end
