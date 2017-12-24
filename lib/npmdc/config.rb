module Npmdc
  class Config
    DEPEPENDENCY_TYPES = %w[dependencies devDependencies].freeze
    ENVIRONMENTS = %w[development].freeze
    MANAGERS = %w[npm yarn].freeze

    attr_accessor :color, :format, :output, :types, :environments,
                  :abort_on_failure, :manager
    attr_writer :path

    def initialize
      @color = true
      @format = :short
      @output = STDOUT
      @types = DEPEPENDENCY_TYPES
      @environments = ENVIRONMENTS
      @abort_on_failure = false
      @manager = MANAGERS.first
    end

    def path
      @path ||= Dir.pwd
    end

    def path?
      instance_variable_defined?(:@path)
    end
  end
end
