class BenchMark
    def run(&block)
      start_time = Time.now
      block.call()
      end_time = Time.now
      elapsed = end_time - start_time
      puts "\n"
      puts "Time elapsed: #{elapsed} seconds"
    end 
  end
  
  benchmark = BenchMark.new
  benchmark.run do 
    # 100.times { 1000 * 1000 }
    5.times do
      print ".."
      sleep(rand(0.1..1.0))
    end
  end