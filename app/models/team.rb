class Team < ActiveRecord::Base
  include Redis::Objects

  lock :trade_players, :expiration => 15  # sec
  value :at_bat
  counter :hits
  counter :runs
  counter :outs
  counter :inning, :start => 1
  list :on_base
  list :coaches, :marshal => true
  set  :outfielders
  hash_key :pitchers_faced  # "hash" is taken by Ruby
  sorted_set :rank, :global => true
end