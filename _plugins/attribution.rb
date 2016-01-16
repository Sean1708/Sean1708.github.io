module Attribution
    class AttributeBlock < Liquid::Block
        def initialize(tag_name, text, tokens)
            super
            @text = text
        end

        def render(context)
            quote = super.to_s
            args = @text.split(/"\s*"/)

            if args.length == 0
                "<blockquote> <p>#{quote}</p> </blockquote>"
            elsif args.length == 1
                "<blockquote> <p>#{quote}</p> <footnote>#{args[0].gsub(/^\s*"+|"+\s*$/, '')}</footnote> </blockquote>"
            else
                "<blockquote> <p>#{quote}</p> <footnote><a href=\"#{args[1].gsub(/^\s*"+|"+\s*$/, '')}\">#{args[0].gsub(/^\s*"+|"+\s*$/, '')}</a></footnote> </blockquote>"
            end
        end
    end
end

Liquid::Template.register_tag('attribute', Attribution::AttributeBlock)
