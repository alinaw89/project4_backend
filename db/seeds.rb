Visit.delete_all
User.delete_all
Group.delete_all
Membership.delete_all

# User.create!(name:'Jane', email: 'Jane@partners.org', phone_number: '5081234567')
# User.create!(name:'Nawal', email: 'Nawal@partners.org', phone_number: '3393648796')
# User.create!(name:'Rob', email: 'Rob@partners.org', phone_number: '2345678906')
# User.create!(name:'Ryan', email: 'Ryan@partners.org', phone_number: '8475678394')


# Visit.create!(start_of_visit:'10/2/2015 at 9AM', end_of_visit:'10/2/2015 at 10AM', protocol:'10180 Diabetes Metformin Trial', subject_id:'006', reason_for_visit:'follow-up appointment', message:'Patient fainted during blood draw. Was sent to emergency. Needs follow-up immediately!', visit_status:'high', sent_status:'message sent', manager_response_status:'seen' )

Visit.create!(start_of_visit:'10/3/2015 at 10:30AM', end_of_visit:'10/3/2015 at 11:45AM', protocol:'11800 SARP Trial', subject_id:'008', reason_for_visit:'bronchoscopy appointment', message:'Patient experienced severe asthma exacerbation and cannot breathe', visit_status:'high', sent_status:'message sent', manager_response_status:'need more information' )


mgh_group = Group.create!(name:'mgh');
tom  = User.create!(name:'Tom');
tom.memberships.create!(role: 'manager', group: mgh_group);


nawal  = User.create!(name:'Nawal');
nawal.memberships.create!(role: 'employee', group: mgh_group);
nawal.visits.create!(start_of_visit:'10/2/2015 at 9AM', end_of_visit:'10/2/2015 at 10AM', protocol:'10180 Diabetes Metformin Trial', subject_id:'006', reason_for_visit:'follow-up appointment', message:'Patient fainted during blood draw. Was sent to emergency. Needs follow-up immediately!', visit_status:'high', sent_status:'message sent', manager_response_status:'seen' )

ali  = User.create!(name:'ali');
ali.memberships.create!(role: 'employee', group: mgh_group);

amy  = User.create!(name:'amy');
amy.memberships.create!(role: 'employee', group: mgh_group);
