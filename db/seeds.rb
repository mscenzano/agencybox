# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Mariano Sáenz de Cenzano', email: 'msc@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', admin: true)
User.create(name: 'Daniel Nacenta', email: 'd.nacenta@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', admin: false)
User.create(name: 'Jonathan Verón', email: 'j.veron@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', admin: false)
User.create(name: 'Hervé Herbrich', email: 'h.herbrich@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', admin: false)
User.create(name: 'Sergi Fraiz', email: 's.fraiz@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', admin: false)
User.create(name: 'Carlos Jimeno', email: 'c.jimeno@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', admin: false)
User.create(name: 'Simon Acosta', email: 's.acosta@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', admin: false)
User.create(name: 'Belén Linacero', email: 'b.linacero@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', admin: false)
User.create(name: 'Felipa Schwarz', email: 'f.schwarz@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', admin: false)




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


vodafone.projects.create(name: 'New years Eve Campaign', description: 'Halloween campaign in 150 retail shops Vodafone. We have to create an event that reinforces the brand image in every retail shop. The objective is to guarantee a positive experience for customers.')
seagrams.projects.create(name: 'Black Friday', description: 'Black friday street marketing campaign. The objective is to bring people to the shop, make the taste the new flavours and mixings, make them feel confortable and spread the brand´s image via experientials.')
endesa.projects.create(name: 'Christmas campaign', description: 'Full BTL (below the line) Christmas Campaign.  The client wants a full street marketing campaign planning for winter. We have to be present in schools, shopping centers and sport centers. We must make people conscious of the climate change and how the company is working to change the future.')


