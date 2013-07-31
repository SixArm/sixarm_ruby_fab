class Fab

  # Fab a Twitter screen name.
  # This delegates to Fab.username.
  #
  # Options:
  #
  #   * none
  #
  # @return [Fixnum] a screen name
  #
  def twitter_screen_name(options = {})
    username(options)
  end

  # Fab a Twitter user id.
  #
  # Options:
  # 
  #   * min
  #   * max
  #
  # @return [Fixnum] a user id
  #
  def twitter_user_id(options = {})
    rand((options[:min] || 10000000)..(options[:max] || 100000000))
  end

  # Fab a Twitter user hash.
  #
  # Options:
  #
  #   * any; merge this hash into the user hash.
  #
  # @return [Hash] a Twitter user hash
  #
  def twitter_user_hash(options = {})
    id = options[:id] || options["id"] || twitter_user_id
    {
      "id" => id.to_i,
      "id_str" => id.to_s
    }.merge(options)
  end

  # Fab a Twitter retweet count.
  #
  # Options:
  #
  #   * min: 0
  #   * max: 999
  #
  # @return [Fixnum] a retweet count
  #
  def twitter_retweet_count(options = {})
    rand((options[:min] || 0)..(options[:max] || 999))
  end

  # Fab a Twitter favorite count.
  #
  # Options:
  #
  #   * min: 0
  #   * max: 999
  #
  # @return [Fixnum] a favorite count
  #
  def twitter_favorite_count(options = {})
    rand((options[:min] || 0)..(options[:max] || 999))
  end

  # Fab a Twitter tweet id.
  #
  # Options:
  #
  #   * min: 1000000000
  #   * max: 9000000000
  #
  # @return [Fixnum] a tweet id
  #
  def twitter_tweet_id(options = {})
    rand((options[:min] || 1000000000)..(options[:max] || 9000000000))
  end
   
  # Fab a Twitter tweet hash.
  #
  # Options:
  #
  #   * any; merge this hash into the tweet hash.
  #
  # @return [Hash] a tweet hash
  # 
  def twitter_tweet_hash(options={})
    id = options[:id] || options["id"] || Fab.twitter_tweet_id
    {
      "created_at" => Fab.time.httpdate,
      "id" => id.to_i,
      "id_str" => id.to_s,
      "text" => Fab.lorem,
      "source" => "web",
      "truncated" => false,
      "in_reply_to_status_id" => nil,
      "in_reply_to_status_id_str" => nil,
      "in_reply_to_user_id" => nil,
      "in_reply_to_user_id_str" => nil,
      "in_reply_to_screen_name" => nil,
      "user" => Fab.twitter_user_hash,
      "geo" => nil,
      "coordinates" => nil,
      "place" => nil,
      "contributors" => nil,
      "retweet_count" => Fab.twitter_retweet_count,
      "favorite_count" => Fab.twitter_favorite_count,
      "favorited" => Fab.boolean,
      "retweeted" => Fab.boolean,
      "lang" => Fab.language_code
    }.merge(options)
  end

end
