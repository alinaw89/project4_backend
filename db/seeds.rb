Visit.delete_all
User.delete_all
Group.delete_all
Membership.delete_all

# User.create!(name:'Jane', email: 'Jane@partners.org', phone_number: '5081234567')
# User.create!(name:'Nawal', email: 'Nawal@partners.org', phone_number: '3393648796')
# User.create!(name:'Rob', email: 'Rob@partners.org', phone_number: '2345678906')
# User.create!(name:'Ryan', email: 'Ryan@partners.org', phone_number: '8475678394')


# Visit.create!(start_of_visit:'10/2/2015 at 9AM', end_of_visit:'10/2/2015 at 10AM', protocol:'10180 Diabetes Metformin Trial', subject_id:'006', reason_for_visit:'follow-up appointment', message:'Patient fainted during blood draw. Was sent to emergency. Needs follow-up immediately!', visit_status:'high', sent_status:'message sent', manager_response_status:'seen' )

# Visit.create!(start_of_visit:'10/3/2015 at 10:30AM', end_of_visit:'10/3/2015 at 11:45AM', protocol:'11800 SARP Trial', subject_id:'008', reason_for_visit:'bronchoscopy appointment', message:'Patient experienced severe asthma exacerbation and cannot breathe', visit_status:'high', sent_status:'message sent', manager_response_status:'need more information' )

# GROUPS
mgh_group = Group.create!(name:'mgh');

# # USERS
# nawal  = User.create!(name:'Nawal', email: 'nawal@partners.org', phone_number: '3393340675');
# rob  = User.create!(name:'Rob', email: 'rob@partners.org', phone_number: '5085547645');
# ryan  = User.create!(name:'Ryan', email: 'ryan@partners.org', phone_number: '7743627860');
# brendan  = User.create!(name:'Brendan', email: 'brendan@partners.org', phone_number: '2039487568');

# # USERS WITH AUTHENTICATION

@user_one = User.create!(name: 'Nawal', email: 'nali1@partners.org', phone_number: '3393642931', password: 'nawal')



# # MEMBERSHIPS
# nawal.memberships.create!(role: 'manager', group: mgh_group);
# rob.memberships.create!(role: 'employee', group: mgh_group);
# ryan.memberships.create!(role: 'employee', group: mgh_group);
# brendan.memberships.create!(role: 'employee', group: mgh_group);


# # VISITS
# ryan.visits.create!(start_of_visit:'10/3/2015 at 10:30AM', end_of_visit:'10/3/2015 at 11:45AM', protocol:'11800 SARP Trial', subject_id:'008', reason_for_visit:'Bronchoscopy Appointment', message:'Patient experienced severe asthma exacerbation and cannot breathe', visit_status:'High', sent_status:'Message Sent', manager_response_status:'Need more information')

# rob.visits.create!(start_of_visit:'10/2/2015 at 9AM', end_of_visit:'10/2/2015 at 10AM', protocol:'10180 Diabetes Metformin Trial', subject_id:'006', reason_for_visit:'Follow-Up Appointment', message:'Patient fainted during blood draw. Was sent to emergency. Needs follow-up immediately!', visit_status:'High', sent_status:'Message Sent', manager_response_status:'Deferred')

# brendan.visits.create!(start_of_visit:'10/3/2015 at 12:30PM', end_of_visit:'10/3/2015 at 3:00PM', protocol:'11844 KIA Trial', subject_id:'112', reason_for_visit:'Annual Follow-up', message:'Patient noted serious adverse event which required hospitalization. This requires immediate follow-up to the IRB in 72 hours.', visit_status:'High', sent_status:'Message Sent', manager_response_status:'Need more information')
