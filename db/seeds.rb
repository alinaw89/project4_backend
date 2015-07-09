User.delete_all
Visit.delete_all

User.create!(admin:true, manager:true, name:'Jane', email: 'Jane@partners.org', phone_number: '5081234567')
User.create!(admin:false, manager:false, name:'Nawal', email: 'Nawal@partners.org', phone_number: '3393648796')
User.create!(admin:false, manager:false, name:'Rob', email: 'Rob@partners.org', phone_number: '2345678906')
User.create!(admin:false, manager:false, name:'Ryan', email: 'Ryan@partners.org', phone_number: '8475678394')


Visit.create!(start_of_visit:'10/2/2015 at 9AM', end_of_visit:'10/2/2015 at 10AM', protocol:'10180 Diabetes Metformin Trial', subject_id:'006', reason_for_visit:'follow-up appointment', message:'Patient fainted during blood draw. Was sent to emergency. Needs follow-up immediately!', visit_status:'high', sent_status:'message sent', manager_response_status:'seen' )

Visit.create!(start_of_visit:'10/3/2015 at 10:30AM', end_of_visit:'10/3/2015 at 11:45AM', protocol:'11800 SARP Trial', subject_id:'008', reason_for_visit:'bronchoscopy appointment', message:'Patient experienced severe asthma exacerbation and cannot breathe', visit_status:'high', sent_status:'message sent', manager_response_status:'need more information' )

