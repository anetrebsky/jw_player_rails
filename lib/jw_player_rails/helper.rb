module JwPlayerRails
  module Helper
    DEFAULT_OPTIONS = {
      id: "jwplayer6",
      flashplayer: "/assets/flash_7.3.4.swf"
    }

    # Includes JWPlayer javascript library
    def jwplayer_assets
      javascript_include_tag "jwplayer_7.3.4"
    end

    def jwplayer(options = {})
      options = DEFAULT_OPTIONS.merge(options)

      result = %Q{<div id='#{options[:id]}'>This div will be replaced by the JW Player.</div>
                  <script type='text/javascript'>
                    jwplayer('#{options[:id]}').setup(#{options.except(:id).to_json});
                  </script>}

      result.respond_to?(:html_safe) ? result.html_safe : result
    end
  end
end