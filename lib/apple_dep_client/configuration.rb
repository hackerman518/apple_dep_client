# Configuration for AppleDEPClient
# Configuration values can be either literals or Procs; note that Procs will not
# be overwritten by AppleDEPClient::Token.save_data

module AppleDEPClient
  module Configuration
    DEP_CONFIG = [
      :private_key,         # MDM Server's private key for decrypting token files
      :consumer_key,        # Server Token information
      :consumer_secret,
      :access_token,
      :access_secret,
      :access_token_expiry
    ]

    DEP_CONFIG.freeze

    attr_writer *DEP_CONFIG

    def method_missing(m, *args, &block)
      if DEP_CONFIG.include? m.to_sym
        get_value(m)
      else
        raise NoMethodError, "Unknown method #{m}"
      end
    end

    def get_value(m)
      value = self.instance_variable_get("@#{m}")
      (value.is_a? Proc)? value.call : value
    end

    def configure
      yield self
    end
  end
end
