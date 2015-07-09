User.delete_all

User.create!(admin:true, manager:true, name:'Jane', email: 'Jane@partners.org', phone_number: '5081234567')
User.create!(admin:false, manager:false, name:'Nawal', email: 'Nawal@partners.org', phone_number: '3393648796')
User.create!(admin:false, manager:false, name:'Rob', email: 'Rob@partners.org', phone_number: '2345678906')
User.create!(admin:false, manager:false, name:'Ryan', email: 'Ryan@partners.org', phone_number: '8475678394')
