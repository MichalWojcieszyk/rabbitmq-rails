class Publisher
  def self.publish(message = {})
    x = channel.fanout("sender.posts")
    x.publish(message.to_json)
  end

  def self.channel
    @channel = connection.create_channel
  end

  def self.connection
    @connection = Bunny.new.tap { |c| c.start }
  end
end