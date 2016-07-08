Given(/^estoy en la pagina de inicio$/) do
  visit '/'
end

Then(/^quiero ver el mensaje "(.*?)"$/) do |mensaje|
	  last_response.body.should=~ /#{mensaje}/m
end
When /^presiono el boton "(.*)"$/ do |nombre_boton|
	click_button(nombre_boton)
end
