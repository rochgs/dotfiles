Pry.config.auto_indent = false
Pry.config.pager = false

# More details in https://github.com/rubychan/coderay/blob/master/lib/coderay/encoders/terminal.rb
module CodeRay
  module Encoders
    class Terminal < Encoder
      TOKEN_COLORS = eval(TOKEN_COLORS.to_s.gsub(/\[35m/, "[96m"))
    end
  end
end
