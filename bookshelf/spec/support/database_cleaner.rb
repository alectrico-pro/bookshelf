# spec/support/database_cleaner.rb

require "database_cleaner-sequel"

Hanami.app.prepare(:persistence)
DatabaseCleaner[:sequel, db: Hanami.app["persistence.db"]]
DatabaseCleaner.url_allowlist = ["postgres://postgres:example@db:5432/bookshelf_api_development",
                                 "postgres://postgres:example@db_test:5432/bookshelf_api_test"]



RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)

  end

  config.around(:each, type: :database) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end

