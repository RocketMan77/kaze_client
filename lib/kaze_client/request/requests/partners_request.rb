# frozen_string_literal: true

module KazeClient
  # @author ciappa_m@modulotech.fr
  # Request the list of companies.
  # @see KazeClient::Request
  # @see KazeClient::Utils::FinalRequest
  # @see KazeClient::Utils::AuthentifiedRequest
  # @see KazeClient::Utils::ListRequest
  # @since 0.1.1
  class PartnersRequest < Utils::FinalRequest
    include Utils::AuthentifiedRequest
    include Utils::ListRequest

    def initialize
      super(:get, 'api/partners')
    end
  end
end
