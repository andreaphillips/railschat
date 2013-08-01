uri = URI.parse('redis://rediscloud:oA19vVGypdfyvKW8@pub-redis-18963.us-east-1-1.1.ec2.garantiadata.com:18963')
$redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)