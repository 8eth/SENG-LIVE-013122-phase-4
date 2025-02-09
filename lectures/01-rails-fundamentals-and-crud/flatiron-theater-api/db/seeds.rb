p1 = Production.create(title: 'Hamlet', genre: 'drama', director:'Bill Shakespeare', description:'The Tragedy of Hamlet, Prince of Denmark', budget: 100000.00, image:'https://upload.wikimedia.org/wikipedia/commons/6/6a/Edwin_Booth_Hamlet_1870.jpg', ongoing:true)

ProductionRole.create(role:'Hamlet', understudy:true, production: p1)

# BREAK OUT ACTIVITY 2 - Generate Seed Data

# 1. Generate Ticket + User Seed Data
# 2. Confirm results by running "rake db:seed:replant"

u1 = User.create(name:'Bob', admin:false)
u2 = User.create(name:'Beth', admin:true)

Ticket.create(price:1, user: u1, production: p1)

