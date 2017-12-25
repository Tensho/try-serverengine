module AdvancedWorker
  def initialize
    reload
  end

  def reload
    @message = config["message"] || "No message"
    @sleep = config["sleep"] || 1
  end

  def run
    until @stop
      logger.info "[worker_id: #{worker_id}] #{@message}"
      sleep @sleep
    end
  end

  def stop
    @stop = true
  end
end
