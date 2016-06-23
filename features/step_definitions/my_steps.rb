Given(/^Entro a la aplicacion$/) do
   visit '/'
end

When(/^Tira dado Jugador$/) do
	click_button("jugadaA")
end

Then(/^La pagina dice "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end



