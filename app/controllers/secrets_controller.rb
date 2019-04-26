require 'pry'
class SecretsController < ApplicationController

    def show 
        
        if !require_login?
            redirect_to login_path
        end
    end
end
