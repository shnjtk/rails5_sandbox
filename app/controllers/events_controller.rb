class EventsController < ApplicationController
  def hello
    EventWorker.perform_async 'Hello async worker'

    head :ok
  end
end
