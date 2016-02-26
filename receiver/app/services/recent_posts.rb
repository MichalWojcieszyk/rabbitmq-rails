class RecentPosts
  KEY = "recent_posts" 

  def self.list
    $redis.lrange(KEY, 0, $redis.llen(KEY)).map do |raw_post|
      JSON.parse(raw_post).with_indifferent_access
    end
  end
end