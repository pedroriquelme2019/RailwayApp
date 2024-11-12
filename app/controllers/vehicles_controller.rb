class VehiclesController < ApplicationController
  def show
    @vehicles = Vehicle.includes(:waypoints).map do |vehicle|
      {
        identifier: vehicle.identifier,
        last_waypoint: vehicle.waypoints.order(sent_at: :desc).first
      }
    end
  end
end
