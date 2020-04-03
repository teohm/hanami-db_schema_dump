require "hanami/db_schema_dump/version"

module Hanami
  module DbSchemaDump
    class Command
      def call(*)
        if ENV["HANAMI_ENV"] == "development"
          system("pg_dump -s --no-owner --no-privileges #{ENV.fetch('DATABASE_URL')} > db/structure.sql")
        end
      end
    end
  end
end

Hanami::CLI::Commands.after "db migrate", Hanami::DbSchemaDump::Command.new
