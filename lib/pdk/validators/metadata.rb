require 'pdk'
require 'pdk/cli/exec'
require 'pdk/validators/base_validator'

module PDK
  module Validate
    class Metadata < BaseValidator
      def self.name
        'metadata'
      end

      def self.cmd
        'metadata-json-lint'
      end

      def self.invoke(options = {})
        PDK.logger.info(_("Running %{cmd} with options: %{options}") % {cmd: cmd, options: options})
        result = { "#{name}" => PDK::CLI::Exec.execute(cmd) }
      end
    end
  end
end
