class App < Sinatra::Base

  get "/" do
    erb :new
  end

  post "/student" do
    @student=Student.new(params[:student])

    params[:student][:courses].each do |details|
      Course.new(details)
    end

    erb :student
  end
end
