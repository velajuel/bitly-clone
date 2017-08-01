get '/' do
  erb :"static/index"
end

post '/shorten_link' do
  
  p params
  @url = Url.new(long_url: params["long_url"],click: 0)
  p @url
  if @url.save
  	@url.shorten
    # erb :"static/show_shorten_link"
    # redirect "/"
    return @url.to_json
  else
    redirect "/"
  end
end

get '/:short_url' do
  # @url = Url.find(params["short_url"])
  url = Url.find_by(short_url: params[:short_url])
  url.click += 1
  url.save
  redirect url.long_url

end

# get '/:short_url' do
# 	@url = Url.find(short_url: params[:short_url])
# 	@url.click_count +=1
# 	@url.save

# 	redirect "{@url.long_url}"
# end

