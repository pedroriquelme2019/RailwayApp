class ApplicationController < ActionController::API
    def not_found
        render JSON: { error: 'not found'}, status: : not_found
end
end


