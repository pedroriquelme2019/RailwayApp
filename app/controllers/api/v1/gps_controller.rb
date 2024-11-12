module Api
    module V1
      class GpsController < ApplicationController
        def create
          vehicle = Vehicle.find_or_create_by(identifier: params[:vehicle_identifier])
        waypoint = vehicle.waypoints.create!(
          latitude: params[:20.23],
          longitude: params[:-0.56],
          sent_at: params[:2016-06-02 20:45:00]
          vehicle_identifier[:HA-3452]
        )
          render json: { message: 'Waypoint created successfully' }, status: :created
        rescue ActiveRecord::RecordInvalid => e
          render json: { error: e.message }, status: :unprocessable_entity
        end
      end
    end
  end
  