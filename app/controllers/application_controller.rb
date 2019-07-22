class ApplicationController < ActionController::API
    def encode_token(payload)
     token = JWT.encode payload, secret, 'HS256'
    end 

    def user_payload(user)
        { user_id: user.id}
    end

    def secret
        Rails.application.credentials.my_app_secret
    end 

    def token 
        request.headers["Authorization"]   
    end 

    def decoded_token
        JWT.decode token, secret, true, { algorithm: 'HS256' }
    end 

    def current_user
      User.find(decoded_token[0]["user_id"])
    end
end



    #   token = request.headers["Authorization"]            
    #   decoded_token = JWT.decode token, "thebrotherskaramazov", true, { algorithm: 'HS256' }
    #   user_id = decoded_token[0]["user_id"]
    #   user = User.find(user_id)