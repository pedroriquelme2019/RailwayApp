class ProcessWaypointJob < ApplicationJob
  queue_as :default

  def perform(*args)
    vehicle = Vehicle.find_or_create_by(identifier: params[:vehicle_identifier])
    vehicle.waypoints.create!(
      latitude: params[:latitude],
      longitude: params[:longitude],
      sent_at: params[:sent_at]
    )
    end
end
