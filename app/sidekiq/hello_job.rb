class HelloJob
  include Sidekiq::Job

  def perform(*_args)
    total = 60 * 1
    jobid = rand(20)

    while total > 0
      puts "excuse #{jobid}"
      total -= 1
      sleep(1.second)
    end
  end
end
