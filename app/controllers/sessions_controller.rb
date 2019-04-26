require 'pry'
class SessionsController < ApplicationController

    def new 
    end 

    def create 
       
        if params[:name].nil? || params[:name].empty? 
            redirect_to login_path
        elsif session[:name].nil? 
            session[:name] = params[:name]
            redirect_to secret_path
        else 
            redirect_to secret_path
        end
    end 

    def destroy 
        session.delete :name 
    end 
end
