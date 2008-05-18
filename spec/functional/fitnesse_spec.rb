require File.expand_path("#{dir = File.dirname(__FILE__)}/spec_helper")

describe "A Fitnesse server" do
  attr_reader :port
  before do
    @port = 8081
    stop_server
  end

  after do
    stop_server
  end

  it "starts" do
    start_server
  end

  def start_server
    dir = File.dirname(__FILE__)
    Thread.start do
      Fitnesse.new(['-p', port, '-r', "../example_wiki_root"]).start
    end

    Timeout.timeout(5) do
      until Lsof.running?(port)
        sleep 0.25
      end
    end
  end

  def stop_server
    if Lsof.running?(port)
      Lsof.kill(port)

      Timeout.timeout(5) do
        while Lsof.running?(port)
          sleep 0.25
        end
      end
    end
  end
end