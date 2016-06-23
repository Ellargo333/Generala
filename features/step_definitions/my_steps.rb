Given(/^Entro a la aplicacion$/) do
   visit '/'
end

Then(/^La pagina dice "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When(/^Tira dado Jugador$/) do
	click_button("jugadaA")
end


