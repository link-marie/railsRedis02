class RedisController < ApplicationController
  
  def show
    doString01
    doString02
    doInteger02
    doValue01
    doList01
    doHash01
    doSet01
    doSetSorted01
  end
  
  def doString01
    if Rails.env.development?
      Redis.current.set('myStr', 'Hello redis02 development')
    else
      Redis.current.set('myStr', 'Hello redis02 production')
    end
  end

  def doString02
    @str1 = Redis::Value.new('myStr')
  end
  
  def doInteger01 
    Redis.current.set('mykey', 1)
  end

  def doInteger02 
    @user1 = User.new
    @user1.my_posts.increment
    @user1.my_posts.decrement
    @user1.my_posts.increment(3)
    @user1.my_posts.decrement(3)
    redis = Redis.current.set('mykey', @user1.my_posts)
  end
  
  def doValue01 
    @value1 = Redis::Value.new('value_name')
    @value1.value = '7'
    # @value1.delete
  end
  
  def doList01
    @list1 = Redis::List.new('list_name')
    @list1.clear 
    @list1 << 'a'
    @list1 << 'b'
  end
  
  def doHash01
    @hash1 = Redis::HashKey.new('hash_name')
    @hash1['a'] = 1
    @hash1['b'] = 2
  end
  
  def doSet01
    @set1 = Redis::Set.new('set_name')
    @set1 << 'a'
    @set1 << 'b'
    @set1 << 'a'  # dup ignored
  end
  
  def doSetSorted01
    @setSorted1 = Redis::SortedSet.new('number_of_posts')
    @setSorted1['Nate']  = 15
    @setSorted1['Peter'] = 75
    @setSorted1['Jeff']  = 24
  end
  
  
end