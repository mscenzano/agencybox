# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


mariano = User.create(name: 'Mariano Sáenz de Cenzano', email: 'msc@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'ceo')
daniel = User.create(name: 'Daniel Nacenta', email: 'd.nacenta@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'creative')
jonathan = User.create(name: 'Jonathan Verón', email: 'j.veron@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'creative')
herve = User.create(name: 'Hervé Herbrich', email: 'h.herbrich@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'creative')
sergi = User.create(name: 'Sergi Fraiz', email: 's.fraiz@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'account')
carlos = User.create(name: 'Carlos Jimeno', email: 'c.jimeno@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'account')
simon = User.create(name: 'Simon Acosta', email: 's.acosta@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'account')
belen = User.create(name: 'Belén Linacero', email: 'b.linacero@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'account')
felipa = User.create(name: 'Felipa Schwarz', email: 'f.schwarz@agencyx.com', password: 'agencybox', password_confirmation: 'agencybox', role: 'creative')


# vodafone = Client.create(name: 'Vodafone', contact_name: 'Paloma Rojo', mail: 'paloma.rojo@vodafone.com', phone: 645253456)
# endesa = Client.create(name: 'Endesa', contact_name: 'Marta Gasset', mail: 'marta.gasset@endesa.com', phone: 643452456)
# seagrams = Client.create(name: 'Seagrams', contact_name: 'Luis Palomo', mail: 'luis.palomo@seagrams.com', phone: 606453434)