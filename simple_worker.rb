module SimpleWorker
  def run
    until @stop
      logger.info "[worker_id: #{worker_id}] Awesome work!"
      sleep 5
    end
  end

  def stop
    @stop = true
  end
end
