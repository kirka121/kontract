# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Setting.delete_all
Setting.create(id: 1, site_name: 'Kontract',site_title: 'Kontract Network - Awesome Services', site_copyright: 'Copyright &copy; 2014 Katata Network. All Rights Reserved.', admin_email: 'kirka121@gmail.com', booking_email: 'kirka121@gmail.com', registration_mode: 1, subpages_active: true , teams_active: true, services_active: true, created_at: Time.now)

Subpage.delete_all
Subpage.create(title: 'some page', content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', user: 'kirka')
Subpage.create(title: 'some page', content: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', user: 'kirka')

User.delete_all
user = User.new(email: 'admin@kirka.ca', password: 'admin', password_confirmation: 'admin')
user.save

Service.delete_all
Service.create!([
  {id: 1, name: "Nintendo Wii U Premium", price: 250},
  {id: 2, name: "XBox 360 250GB", price: 250},
  {id: 3, name: "Playstation 3 500 GB", price: 239.95},
  {id: 4, name: "Nintendo Wii", price: 99.95},
  {id: 5, name: "Nintendo 3DS", price: 174.95}
])
