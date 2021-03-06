# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module GeniusReferrals
  class BonusesController < BaseController
    @@instance = BonusesController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get the list of bonuses for a given account.
    # @param [String] account_slug Required parameter: The account identifier
    # @param [Integer] page Optional parameter: Page number, e.g. 1 would start at the first result, and 10 would start at the tenth result.
    # @param [Integer] limit Optional parameter: Maximum number of results to return in the response. Default (10), threshold (100)
    # @param [String] filter Optional parameter: Allowed fields: name, lastname, email, campaign_slug, from, to, created. Use the following delimiters to build your filters params. The vertical bar ('\|') to separate individual filter phrases and a double colon ('::') to separate the names and values. The delimiter of the double colon (':') separates the property name from the comparison value, enabling the comparison value to contain spaces. Example: www.example.com/users?filter='name::todd\|city::denver\|title::grand poobah'
    # @param [String] sort Optional parameter: Allowed fields: name, lastname, email, created. Use sort query-string parameter that contains a delimited set of property names. For each property name, sort in ascending order, and for each property prefixed with a dash ('-') sort in descending order. Separate each property name with a vertical bar ('\|'), which is consistent with the separation of the name\|value pairs in filtering, above. For example, if we want to retrieve users in order of their last name (ascending), first name (ascending) and hire date (descending), the request might look like this www.example.com/users?sort='last_name\|first_name\|-hire_date'
    # @return Mixed response from the API call
    def get_bonuses(account_slug, 
                    page = 1, 
                    limit = 10, 
                    filter = nil, 
                    sort = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/accounts/{account_slug}/bonuses'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'account_slug' => account_slug
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'page' => page,
        'limit' => limit,
        'filter' => filter,
        'sort' => sort
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

    # Make an attempt to give a bonus for to the advocate's referrer. The system processes the given advocate (referral) and creates a bonus for the advocate's referrer if is needed. All restrictions set on the campaigns for this account will be check out before giving the bonus to the advocate's referrer.
    # @param [String] account_slug Required parameter: The account identifier
    # @param [BonusesForm] bonuses_form Required parameter: The body of the request
    # @return Mixed response from the API call
    def post_bonus(account_slug, 
                   bonuses_form)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/accounts/{account_slug}/bonuses'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'account_slug' => account_slug
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: bonuses_form.to_json
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Check if there is a bonus to be given to the advocate. Allows the clients to check if there is a bonus to be given, it simulates the behaivor of a POST request to /accounts/{account_slug}/bonuses resource. This resource is idempotent.
    # @param [String] account_slug Required parameter: The account identifier
    # @param [String] advocate_token Required parameter: The referral's token. Usually the one that completed the purchase, or trigger an event.
    # @param [String] reference Required parameter: The reference number for this request. Usually the order_id, payment_id, or timestamp.
    # @param [Float] payment_amount Required parameter: The payment amount the referrals has made. Required for a percentage based campaign.
    # @return Binary response from the API call
    def get_bonus_checkup(account_slug, 
                          advocate_token, 
                          reference, 
                          payment_amount)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/accounts/{account_slug}/bonuses/checkup'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'account_slug' => account_slug
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'advocate_token' => advocate_token,
        'reference' => reference,
        'payment_amount' => payment_amount
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request, binary: true)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Force the system to give a bonus to an advocate. The system will not take into account the restriccions specified on the campaigns.
    # @param [String] account_slug Required parameter: The account identifier
    # @param [ForceBonusesForm] bonus_form Required parameter: The body of the request
    # @return Mixed response from the API call
    def post_force_bonus(account_slug, 
                         bonus_form)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/accounts/{account_slug}/bonuses/force'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'account_slug' => account_slug
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: bonus_form.to_json
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get a bonus request trace.
    # @param [String] account_slug Required parameter: The account identifier
    # @param [Integer] trace_id Required parameter: The trace id
    # @return Mixed response from the API call
    def get_bonus_trace(account_slug, 
                        trace_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/accounts/{account_slug}/bonuses/traces/{trace_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'account_slug' => account_slug,
        'trace_id' => trace_id
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

    # Delete a bonus
    # @param [String] account_slug Required parameter: The account identifier
    # @param [Integer] bonus_id Required parameter: The bonus id
    # @return void response from the API call
    def delete_bonus(account_slug, 
                     bonus_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/accounts/{account_slug}/bonuses/{bonus_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'account_slug' => account_slug,
        'bonus_id' => bonus_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'Content-Type' => Configuration.content_type
      }

      # prepare and execute HttpRequest
      _request = @http_client.delete _query_url, headers: _headers
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
    end

    # Get a bonus by a given id.
    # @param [String] account_slug Required parameter: The account identifier
    # @param [Integer] bonus_id Required parameter: The bonus id
    # @return Mixed response from the API call
    def get_bonus(account_slug, 
                  bonus_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/accounts/{account_slug}/bonuses/{bonus_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'account_slug' => account_slug,
        'bonus_id' => bonus_id
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

    # Get the list of bonuses traces (audit trail). Every time the system tries to give a bonus the an advocate a new trace is created.
    # @param [String] account_slug Required parameter: The account identifier
    # @param [Integer] page Optional parameter: Page number, e.g. 1 would start at the first result, and 10 would start at the tenth result.
    # @param [Integer] limit Optional parameter: Maximum number of results to return in the response. Default (10), threshold (100)
    # @param [String] filter Optional parameter: Allowed fields: reference, result, bonus_amount, advocate_token, advocate_referrer_token, campaign_slug, from, to, created. Use the following delimiters to build your filters params. The vertical bar ('\|') to separate individual filter phrases and a double colon ('::') to separate the names and values. The delimiter of the double colon (':') separates the property name from the comparison value, enabling the comparison value to contain spaces. Example: www.example.com/users?filter='name::todd\|city::denver\|title::grand poobah'
    # @param [String] sort Optional parameter: Allowed fields: created. Use sort query-string parameter that contains a delimited set of property names. For each property name, sort in ascending order, and for each property prefixed with a dash ('-') sort in descending order. Separate each property name with a vertical bar ('\|'), which is consistent with the separation of the name\|value pairs in filtering, above. For example, if we want to retrieve users in order of their last name (ascending), first name (ascending) and hire date (descending), the request might look like this www.example.com/users?sort='last_name\|first_name\|-hire_date'
    # @return Mixed response from the API call
    def get_bonus_traces(account_slug, 
                         page = 1, 
                         limit = 10, 
                         filter = nil, 
                         sort = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/accounts/{account_slug}/bonuses/traces'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'account_slug' => account_slug
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'page' => page,
        'limit' => limit,
        'filter' => filter,
        'sort' => sort
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
