class EventWorker
  include Sidekiq::Worker
  sidekiq_options queue: :events

  def perform(msg)
    Rails.logger.info "Sidekiq log: #{msg}"
  end
end
