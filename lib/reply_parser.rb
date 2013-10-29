require "reply_parser/version"

require "active_support/core_ext"
require "action_view/vendor/html-scanner/html/tokenizer"
require "action_view/vendor/html-scanner/html/node"
require "action_view/vendor/html-scanner/html/sanitizer"

module ReplyParser
  def self.sanitize(html)
    remove_reply HTML::FullSanitizer.new.sanitize(html)
  end

  def self.remove_reply(text)
    result = case text
             when /(.+)On .+ wrote:$/m
               $1
             when /(.+)^.* Reply ABOVE THIS LINE/m
               $1
             else
               text
             end

    result.strip
  end
end
