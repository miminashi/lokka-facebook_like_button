module Lokka
  module FacebookLikeButton
    def self.registered(app)
      app.get '/admin/plugins/facebook_like_button' do
        haml :"plugin/lokka-facebook_like_button/views/index", :layout => :"admin/layout"
      end 

      app.put '/admin/plugins/facebook_like_button' do
        params.each_pair do |key, value|
          eval("Option.#{key}='#{value}'") if key != '_method'
        end
        flash[:notice] = t.facebook_like_button_updated
        redirect '/admin/plugins/facebook_like_button'
      end 
    end 
  end

  module Helpers
    def facebook_like_button(url = nil)
      url = "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}#{request.env['SCRIPT_NAME']}#{request.env['PATH_INFO']}" if url.blank?

=begin
      count = Option.facebook_like_button_count
      count = 'vertical' if count.blank?

      via = Option.facebook_like_button_via

      related = Option.facebook_like_button_related_account
      unless related.blank?
        description = Option.facebook_like_button_related_description
        related += ':' + description unless description.blank?
      end

      lang = Option.facebook_like_button_lang
      lang = '' if lang == 'en'

      opts = {'data-count' => count}
      opts['data-via'] = via unless via.blank?
      opts['data-related'] = related unless related.blank?
      opts['data-lang'] = lang unless lang.blank?
      opts['data-url'] = url unless url.blank?

      data = []
      opts.each {|opt| data << opt.join('="') + '"'}

      code = %Q(<a href="http://twitter.com/share" class="twitter-share-button")
      code += ' ' + data.join(' ')
      code += %Q(>Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>)
=end
      code = '<iframe src="http://www.facebook.com/plugins/like.php?href=' + url + '&amp;layout=button_count&amp;show_faces=true&amp;width=450&amp;action=like&amp;font=arial&amp;colorscheme=light&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:450px; height:21px;" allowTransparency="true"></iframe>'
    end
  end
end
