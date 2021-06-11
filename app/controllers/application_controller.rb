class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, "tammycarmen", "HS256")
    end

    def logged_In?
        headers = request.headers["Authorization"]
        token = headers.split(" ")[1]

        begin
            user_id = JWT.decode(toke, "tammycarmen", "HS256")[0]["user_id"]
            user = User.find(user_id)
        rescue
            user = nil
        end

        unless user
            render json: {error: "Please Login"}
        end
    end
end
