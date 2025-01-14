# frozen_string_literal: true

module KazeClient
  # @author RICHARD Peter <richar_p@modulotech.fr>
  # Add tags to a job.
  # @note    This API is under development and does not work well.
  #          When you add a tag with it, it does not check if the id is correct or
  #          not and it deletes all the other tags.
  #          It should be fixed in a next version of Kaze API.
  #
  # @example
  #     rq = KazeClient::AddTagRequest.new(123, [1, 2, 3]).with_token('token')
  #     KazeClient::Client.new('https://kaze.modulotech.fr').execute(rq)
  # Will make a request like this:
  #    PUT https://kaze.modulotech.fr/api/tags/references/job/123
  #   --- HEADERS ---
  #   {
  #       "Authorization": "token", "Content-Type": "application/json", "Accept": "application/json"
  #   }
  #   --- BODY ---
  #   {
  #       "tags": [1, 2, 3]
  #   }
  #
  # @see KazeClient::Request
  # @see KazeClient::Utils::FinalRequest
  # @see KazeClient::Utils::AuthentifiedRequest
  # @since 0.3.2
  class AddTagRequest < Utils::FinalRequest
    include Utils::AuthentifiedRequest

    def initialize(job_id, tag_ids)
      super(:put, "/api/tags/references/job/#{job_id}")

      @body = { tags: tag_ids }
    end
  end
end
