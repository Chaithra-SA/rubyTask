class JobsAtTeamtailorController < ApplicationController
  def index
    @result = HTTParty.get("https://api.teamtailor.com/v1/jobs/", :headers => {
    "X-Api-Version" => "20161108",
    "Content-Type" => "application/json",
    "Authorization" => "Token token=g7_KVbKaKS7RQYcXlQ0vrCm7SdZBTTEALO7zi8wV"
  })    
    @jobs=@result["data"]
  end


  def show
    id=params[:id]
    @result = HTTParty.get("https://api.teamtailor.com/v1/jobs/", :headers => {
    "X-Api-Version" => "20161108",
    "Content-Type" => "application/json",
    "Authorization" => "Token token=g7_KVbKaKS7RQYcXlQ0vrCm7SdZBTTEALO7zi8wV"
  })
    real=@result["data"]
    @json=real.select {|h1| h1["id"]==id}
  end
end

