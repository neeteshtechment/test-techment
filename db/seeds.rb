# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'neetesh@techment.com', password: '123456')

Channel.create(name: 'SabTv')
Channel.create(name: 'Sony')
Channel.create(name: 'Utsav')
Channel.create(name: 'Sanskar')


TvShow.create(name: 'Tarak Mehta ka oulta chasmah', channel_id: 1, start_time: '16:00', end_time: '16:59')
TvShow.create(name: 'Baalveer', channel_id: 1, start_time: '17:00', end_time: '17:59')
TvShow.create(name: 'Office Office', channel_id: 1, start_time: '18:00', end_time: '18:59')
TvShow.create(name: 'Aladin', channel_id: 1, start_time: '19:00', end_time: '19:29')

TvShow.create(name: 'The kapil sharma show' , channel_id: 2, start_time: '13:00', end_time: '13:59')
TvShow.create(name: 'Indian Idol' , channel_id: 2, start_time: '14:00', end_time: '14:29')
TvShow.create(name: 'Kaun Banega Crorepati' , channel_id: 2, start_time: '14:30', end_time: '14:59')

TvShow.create(name: 'Yeh rista kya kehlata hai' , channel_id: 3, start_time: '10:00', end_time: '10:59')
TvShow.create(name: 'Nach Baliye' , channel_id: 3, start_time: '11:00', end_time: '11:29')
TvShow.create(name: 'Is pyar ko main kya naam du' , channel_id: 3, start_time: '11:30', end_time: '12:00')

TvShow.create(name: 'Prerna Pathey' , channel_id: 4, start_time: '07:00', end_time: '07:29')
TvShow.create(name: 'PP Radhika Sharan Ji Maharaj' , channel_id: 4, start_time: '07:30', end_time: '08:00')