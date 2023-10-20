class RetriesJob
  include Sidekiq::Job
  sidekiq_options retry: 2   # retry 5 times
  def perform(*_args)
    rad = rand(10)
    raise "Job fails and must retry------------------------------------------------------#{rad}  #{Time.now}" if rad < 8

    puts "Job successful===============================================================-#{rad}   #{Time.now}"
  end
end
