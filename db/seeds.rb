# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reservation.destroy_all
Ubication.destroy_all
Subsidiary.destroy_all
UserActivity.destroy_all
Activity.destroy_all
User.destroy_all
AdminUser.destroy_all

AdminUser.create!(email: 'admin@example.com', password: '123456', password_confirmation: '123456')

s1 = Subsidiary.create(name:'alameda',address: 'lib bdo ohiggins 667',phone:'87945613')
s2 = Subsidiary.create(name:'las rejas',address: 'las rejas 5455',phone:'78451987')
s3 = Subsidiary.create(name:'apoquindo',address: 'apoquindo 569',phone:'64687513')

u1 = Ubication.create(name: 'sala talleres',capacity: 25, subsidiary_id: s1.id)
u2 = Ubication.create(name: 'sala capacitaciones',capacity: 30, subsidiary_id: s1.id)
u3 = Ubication.create(name: 'gimnasio techado',capacity: 50, subsidiary_id: s1.id)

a = User.create(email:'seb@seb.cl',password: '123456',name:'seba')
b = User.create(email:'use@use.cl',password: '123456',name:'userx')


d1 = 2.days.from_now.change(hour: 7)
d2 = 2.days.from_now.change(hour: 8)

d3 = 3.days.from_now.change(hour: 15)
d4 = 3.days.from_now.change(hour: 16)

d5 = 4.days.from_now.change(hour: 11)
d6 = 4.days.from_now.change(hour: 12)

act1 = Activity.create(name: 'clases regulares pole dance', description: 'taller orientado a show blabla', enabled: true, capacity:12)
act2 = Activity.create(name: 'crossfit', description: 'entrenamiento intensivo', enabled: true, capacity:25)
act3 = Activity.create(name: 'danza ballet', description: 'de 7 a 15 años', enabled: true, capacity:30)


Reservation.create(init_date: d1,end_date:d2,cost: 15000, user_id: a.id, ubication_id: u1.id,activity_id:act1.id)
Reservation.create(init_date: d3,end_date:d4,cost: 10000, user_id: a.id, ubication_id: u1.id,activity_id:act2.id)
Reservation.create(init_date: d5,end_date:d6,cost: 200000, user_id: a.id, ubication_id: u2.id,activity_id:act3.id)



UserActivity.create(user_id: a.id, activity_id: act1.id)
UserActivity.create(user_id: b.id, activity_id: act1.id)
UserActivity.create(user_id: b.id, activity_id: act2.id)