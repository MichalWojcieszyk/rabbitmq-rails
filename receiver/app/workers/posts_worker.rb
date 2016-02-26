class PostsWorker
  include Sneakers::Worker
  
  from_queue "receiver.posts", env: nil

  def work(raw_post)
    $redis.lpush("recent_posts", raw_post)
    ack!
  end
end