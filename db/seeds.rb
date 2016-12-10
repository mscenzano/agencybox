# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Mariano Sáenz de Cenzano', email: 'msc@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'ceo')
User.create(name: 'Daniel Nacenta', email: 'd.nacenta@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'creative')
User.create(name: 'Jonathan Verón', email: 'j.veron@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'creative')
User.create(name: 'Hervé Herbrich', email: 'h.herbrich@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'creative')
User.create(name: 'Sergi Fraiz', email: 's.fraiz@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'account')
User.create(name: 'Carlos Jimeno', email: 'c.jimeno@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'account')
User.create(name: 'Simon Acosta', email: 's.acosta@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'account')
User.create(name: 'Belén Linacero', email: 'b.linacero@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'account')
User.create(name: 'Felipa Schwarz', email: 'f.schwarz@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'creative')




30.times do 
    company = FFaker::Company.name
    contact_name = FFaker::Name.html_safe_name
    c = Client.create(name: company, contact_name: contact_name, email: "#{contact_name.parameterize('-')}@#{company.parameterize('.')}.com", phone: rand(600000000..699999999))
    num_projects = rand(1..4)
    num_projects.times do 
      c.projects.create(name: FFaker::Book.title , description: FFaker::DizzleIpsum.phrase)
    end
end

vodafone = Client.create(name: 'Vodafone', contact_name: 'Paloma Rojo', email: 'paloma.rojo@vodafone.com', phone: 645253456)
endesa = Client.create(name: 'Endesa', contact_name: 'Marta Gasset', email: 'marta.gasset@endesa.com', phone: 643452456)
seagrams = Client.create(name: 'Seagrams', contact_name: 'Luis Palomo', email: 'luis.palomo@seagrams.com', phone: 606453434)


vodafone.projects.create(name: 'Halloween', description: 'Halloween campaign in 150 retail shops Vodafone')
seagrams.projects.create(name: 'Black Friday', description: 'Black friday street marketing campaign')
endesa.projects.create(name: 'Christmas campaign', description: 'Full BTL Christmas Campaign, we organized a full street marketing campaign')


