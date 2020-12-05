class UsersController < ApplicationController

  def index

 @list_of_users=User.all.order({:username => :asc}) 

render({:template => "users/index.html.erb"})

end


def show

  url_username=params.fetch("path_username")

  matching_user=User.where({:username=> url_username})
  @the_user=matching_user.at(0)

render({:template =>  "users/show.html.erb"})
end


end
