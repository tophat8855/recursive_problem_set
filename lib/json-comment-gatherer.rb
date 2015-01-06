require 'httpclient'
require 'rubygems'
require 'json'

client = HTTPClient.new

string = client.get_content('http://www.reddit.com/r/aww/comments/zzg3k/my_local_humane_society_posts_pictures_of_new/.json')

sample1 = JSON.parse(string)[1].class

sameple2 = {body: 234}

def search_for_body(hash)

    hash.has_key?(:body)
    puts hash.values_at(:body)

    hash.each_value {|value| search_for_body(value)}
end

search_for_body(sample)
