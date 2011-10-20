# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([ :name => 'Chicago' ,  :name => 'Copenhagen' ])
#   Mayor.create(:name => 'Daley', :city => cities.first)
    Film.create([:film_id =>1,:film_name => 'Shawshank Redemption',:genre=>'PG', :personalitycount => 2,:group=>1])
    Film.create([:film_id =>2,:film_name => 'Saw',:genre=>'18', :personalitycount => 4,:group=>1])
    Film.create([:film_id =>3,:film_name => 'Bambi',:genre=>'PG', :personalitycount => 1,:group=>1])
    Film.create([:film_id =>4,:film_name => 'Schinders List',:genre=>'15', :personalitycount => 3,:group=>1])
    Film.create([:film_id =>5,:film_name => 'Toy Story',:genre=>'PG', :personalitycount => 1,:group=>2])
    Film.create([:film_id =>6,:film_name => 'Forest Gump',:genre=>'12', :personalitycount => 2,:group=>2])
    Film.create([:film_id =>7,:film_name => 'The Hills Have Eyes',:genre=>'18', :personalitycount => 4,:group=>2])
    Film.create([:film_id =>8,:film_name => 'Traffic',:genre=>'15', :personalitycount => 3,:group=>2])
    Film.create([:film_id =>9,:film_name => 'AntiChrist',:genre=>'18', :personalitycount => 4,:group=>3])
    Film.create([:film_id =>10,:film_name => 'When Harry Met Sally',:genre=>'12', :personalitycount => 2,:group=>3])
    Film.create([:film_id =>11,:film_name => 'Syriana',:genre=>'15', :personalitycount => 3,:group=>3])
    Film.create([:film_id =>12,:film_name => 'Up',:genre=>'PG', :personalitycount => 1,:group=>3])
    Film.create([:film_id =>13,:film_name => 'There Will be Blood',:genre=>'15', :personalitycount => 3,:group=>4])
    Film.create([:film_id =>14,:film_name => 'Omen',:genre=>'18', :personalitycount => 4,:group=>4])
    Film.create([:film_id =>15,:film_name => 'The Pink Panther',:genre=>'PG', :personalitycount => 1,:group=>4])
    Film.create([:film_id =>16,:film_name => 'Die Hard',:genre=>'15', :personalitycount => 2,:group=>4])
 
