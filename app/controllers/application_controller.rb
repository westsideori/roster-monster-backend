class ApplicationController < ActionController::API
    # before_action :authenticate

    

    def authenticate
        # read the authorization header from the request
        auth_header = request.headers["Authorization"]
        # get the token out of the header
        token = auth_header.split.last
        # decode the token using JWT
        payload = JWT.decode(token, ENV["JWT_SECRET"], true, { algorithm: 'HS256' })[0]
        
        # get the current user from the decoded payload
        @current_user = User.find_by(id: payload["user_id"])
        # @current_user

      rescue
        # if anything goes wrong, send an unauthorized status back
        render json: { errors: ["Not authorized"] }, status: :unauthorized
        

    end
        # def authorization
        #     @authorization ||= request.authorization
        # end

        # def token
        #     authorization.split(" ")[1] if authorization
        # end

        # def decoded_token
        #     JWT.decode(token, 'mysecret', true, { algorithm: 'HS256' })
        # end

        # def current_user
        #     @current_user ||= User.find(decoded_token[0]["id"]) if authorization
        # end

    
end
