require 'career_builder/client/authentication'
require 'career_builder/client/request'
require 'career_builder/client/advanced_resume_search'
require 'career_builder/client/get_resume'
require 'career_builder/client/resume_actions_remaining_today'

module CareerBuilder

  class Client

    include Authentication
    include Request
    include AdvancedResumeSearch
    include GetResume
    include ResumeActionsRemainingToday

    attr_reader :email, :password

    attr_accessor :connection_retry_count

    DEFAULT_CONNECTION_RETRY_COUNT = 5
    class << self
      attr_accessor :connection_retry_count
    end
    self.connection_retry_count = DEFAULT_CONNECTION_RETRY_COUNT

    def initialize(email, password, options = {})
      @email, @password = email, password
      @debug = options.fetch(:debug) { false }
      @connection_retry_count = options.fetch(:connection_retry_count) { Client.connection_retry_count }
    end

    def resumes(options = {})
      Resume::LazyCollection.new(self, options)
    end

  end

end
