# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Medicine.destroy_all
Dosage.destroy_all

chaya = User.create(name: "Chaya", email: "chaya@email.com", password: "password")

meds = [
  ["Lyrica", "Dr. Shah"],
  ["Xanax", "Dr. Mullan"],
  ["Melatonin", "Dr. Pang"],
  ["Entresto", "Dr. Lee"]
]

dosages = [
  [300.0, "02/10/2021", "04/1/2021"],
  [0.25, "01/04/2021", "03/31/2021"],
  [0.5, "02/23/2021", "04/15/2021"],
  [103, "01/01/2021", "02/10/2021"]
]

meds.each do |name, doctors_name |
  Medicine.create(name: name, doctors_name: doctors_name)
end

dosages.each do |amount, start_date, end_date|
  Dosage.create(amount: amount, start_date: start_date, end_date: end_date)
end

lyrica = Medicine.first
xanax = Medicine.second
melatonin = Medicine.third
entresto = Medicine.fourth

lyrica.dosages << Dosage.first
xanax.dosages << Dosage.second
melantonin.dosages << Dosage.third
entresto.dosages << Dosage.fourth

chaya.dosages << Dosage.first
chaya.dosages << Dosage.second
chaya.dosages << Dosage.third
chaya.dosages << Dosage.fourth