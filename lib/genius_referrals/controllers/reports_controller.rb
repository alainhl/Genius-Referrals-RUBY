# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module GeniusReferrals
  class ReportsController < BaseController
    @@instance = ReportsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get referrals summary per referral origin.
    # @param [String] advocate_token Required parameter: The advocate's token
    # @return Mixed response from the API call
    def get_referrals_summary_per_origin(advocate_token)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reports/referrals-summary-per-origin'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'advocate_token' => advocate_token
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get bonuses summary per referral origin.
    # @param [String] advocate_token Required parameter: The advocate's token
    # @return Mixed response from the API call
    def get_bonuses_summary_per_origin(advocate_token)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reports/bonuses-summary-per-origin'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'advocate_token' => advocate_token
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get top 10 advocates.
    # @param [String] account_slug Optional parameter: The account identifier
    # @param [String] campaign_slug Optional parameter: The campaign identifier
    # @param [Integer] limit Optional parameter: Maximum number of results to return in the response. Default (10)
    # @param [DateTime] from Optional parameter: The datetime were the range of the search starts
    # @param [DateTime] to Optional parameter: The datetime were the range of the search stops
    # @return Mixed response from the API call
    def get_top_advocates(account_slug = nil, 
                          campaign_slug = nil, 
                          limit = nil, 
                          from = nil, 
                          to = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reports/top-advocates'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'account_slug' => account_slug,
        'campaign_slug' => campaign_slug,
        'limit' => limit,
        'from' => from,
        'to' => to
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get share daily participation.
    # @param [String] account_slug Optional parameter: The account identifier
    # @param [String] campaign_slug Optional parameter: The campaign identifier
    # @param [String] advocate_token Optional parameter: The advocate's token
    # @param [DateTime] from Optional parameter: The datetime were the range of the search starts
    # @param [DateTime] to Optional parameter: The datetime were the range of the search stops
    # @return Mixed response from the API call
    def get_share_daily_participation(account_slug = nil, 
                                      campaign_slug = nil, 
                                      advocate_token = nil, 
                                      from = nil, 
                                      to = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reports/share-daily-participation'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'account_slug' => account_slug,
        'campaign_slug' => campaign_slug,
        'advocate_token' => advocate_token,
        'from' => from,
        'to' => to
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get referral daily participation.
    # @param [String] account_slug Optional parameter: The account identifier
    # @param [String] campaign_slug Optional parameter: The campaign identifier
    # @param [String] advocate_token Optional parameter: The advocate's token
    # @param [DateTime] from Optional parameter: The datetime were the range of the search starts
    # @param [DateTime] to Optional parameter: The datetime were the range of the search stops
    # @return Mixed response from the API call
    def get_referral_daily_participation(account_slug = nil, 
                                         campaign_slug = nil, 
                                         advocate_token = nil, 
                                         from = nil, 
                                         to = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reports/referral-daily-participation'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'account_slug' => account_slug,
        'campaign_slug' => campaign_slug,
        'advocate_token' => advocate_token,
        'from' => from,
        'to' => to
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get click daily participation.
    # @param [String] account_slug Optional parameter: The account identifier
    # @param [String] campaign_slug Optional parameter: The campaign identifier
    # @param [String] advocate_token Optional parameter: The advocate's token
    # @param [DateTime] from Optional parameter: The datetime were the range of the search starts
    # @param [DateTime] to Optional parameter: The datetime were the range of the search stops
    # @return Mixed response from the API call
    def get_click_daily_participation(account_slug = nil, 
                                      campaign_slug = nil, 
                                      advocate_token = nil, 
                                      from = nil, 
                                      to = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reports/click-daily-participation'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'account_slug' => account_slug,
        'campaign_slug' => campaign_slug,
        'advocate_token' => advocate_token,
        'from' => from,
        'to' => to
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get bonuses daily given.
    # @param [String] account_slug Optional parameter: The account identifier
    # @param [String] campaign_slug Optional parameter: The campaign identifier
    # @param [String] advocate_token Optional parameter: The advocate identifier
    # @param [DateTime] from Optional parameter: The datetime were the range of the search starts
    # @param [DateTime] to Optional parameter: The datetime were the range of the search stops
    # @return Mixed response from the API call
    def get_bonuses_daily_given(account_slug = nil, 
                                campaign_slug = nil, 
                                advocate_token = nil, 
                                from = nil, 
                                to = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reports/bonuses-daily-given'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'account_slug' => account_slug,
        'campaign_slug' => campaign_slug,
        'advocate_token' => advocate_token,
        'from' => from,
        'to' => to.httpdate
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end
  end
end
