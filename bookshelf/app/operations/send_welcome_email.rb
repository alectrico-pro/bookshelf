require "acme_email/client"

module Bookshelf
  module Operations
    class SendWelcomeEmail
      include Deps[
        "email_client",
        "renderers.welcome_email"]

      def call(name:, email_address:)
        email_client.deliver(
          to: email_address,
          subject: "Welcome!",
          text_body: email_renderer.render_text(name: name),
          html_body: email_renderer.render_html(name: name)

        )

      end
    end
  end
end
