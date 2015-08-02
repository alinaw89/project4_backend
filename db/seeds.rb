Notification.delete_all
Visit.delete_all
User.delete_all
Group.delete_all

# User.create!(name:'Jane', email: 'Jane@partners.org', phone_number: '5081234567')
# User.create!(name:'Nawal', email: 'Nawal@partners.org', phone_number: '3393648796')
# User.create!(name:'Rob', email: 'Rob@partners.org', phone_number: '2345678906')
# User.create!(name:'Ryan', email: 'Ryan@partners.org', phone_number: '8475678394')


# Visit.create!(start_of_visit:'10/2/2015 at 9AM', end_of_visit:'10/2/2015 at 10AM', protocol:'10180 Diabetes Metformin Trial', subject_id:'006', reason_for_visit:'follow-up appointment', message:'Patient fainted during blood draw. Was sent to emergency. Needs follow-up immediately!', visit_status:'high', sent_status:'message sent', manager_response_status:'seen' )

# Visit.create!(start_of_visit:'10/3/2015 at 10:30AM', end_of_visit:'10/3/2015 at 11:45AM', protocol:'11800 SARP Trial', subject_id:'008', reason_for_visit:'bronchoscopy appointment', message:'Patient experienced severe asthma exacerbation and cannot breathe', visit_status:'high', sent_status:'message sent', manager_response_status:'need more information' )

# GROUPS
nawal = Group.create!(name:'mgh', manager_name: 'Nawal', manager_phone: '(339)364-0657');

# # USERS
# nawal  = User.create!(name:'Nawal', email: 'nawal@partners.org', phone_number: '3393340675');
# rob  = User.create!(name:'Rob', email: 'rob@partners.org', phone_number: '5085547645');
# ryan  = User.create!(name:'Ryan', email: 'ryan@partners.org', phone_number: '7743627860');
# brendan  = User.create!(name:'Brendan', email: 'brendan@partners.org', phone_number: '2039487568');

# # USERS WITH AUTHENTICATION

# nawal = User.create!(name: 'Nawal', email: 'nali@partners.com', phone_number: '(781) 253-2154', password: 'nawal')
ryan = User.create!(name: 'Ryan', email: 'ryanm@partners.org', phone_number: '(781) 253-2154', password: 'ryan', group: nawal)
rachael = User.create!(name: 'Rachael', email: 'rachael@partners.org', phone_number: '(781) 253-2154', password: 'rachael', group: nawal)
dan = User.create!(name: 'Dan', email: 'dan@partners.org', phone_number: '(781) 253-2154', password: 'dan', group: nawal)
jillian = User.create!(name: 'Jillian', email: 'jillian@partners.org', phone_number: '(781) 253-2154', password: 'jillian', group: nawal)

# # MEMBERSHIPS
# nawal.memberships.create!(role: 'manager', group: mgh_group);
# rob.memberships.create!(role: 'employee', group: mgh_group);
# ryan.memberships.create!(role: 'employee', group: mgh_group);
# brendan.memberships.create!(role: 'employee', group: mgh_group);


# # VISITS
ryan.visits.create!(start_of_visit:'10/3/2015 at 10:30AM', end_of_visit:'10/3/2015 at 11:45AM', protocol:'11800 SARP Trial', subject_id:'008', reason_for_visit:'Bronchoscopy Appointment', message:'Patient experienced severe asthma exacerbation and cannot breathe', priority:'High')
ryan.visits.create!(start_of_visit:'10/4/2015 at 12:00PM', end_of_visit:'10/4/2015 at 12:30PM', protocol:'1444 Metformin Trial', subject_id:'012', reason_for_visit:'Glucose Blood Draw', message:'Patient fainted during visit today. Must fill out adverse event report.', priority:'Low')

dan.visits.create!(start_of_visit:'10/3/2015 at 10:30AM', end_of_visit:'10/3/2015 at 11:45AM', protocol:'11800 SARP Trial', subject_id:'008', reason_for_visit:'Bronchoscopy Appointment', message:'Patient experienced severe asthma exacerbation and cannot breathe', priority:'High')
dan.visits.create!(start_of_visit:'10/4/2015 at 12:00PM', end_of_visit:'10/4/2015 at 12:30PM', protocol:'1444 Metformin Trial', subject_id:'012', reason_for_visit:'Glucose Blood Draw', message:'Patient fainted during visit today. Must fill out adverse event report.', priority:'Low')
dan.visits.create!(start_of_visit:'5/21/2015 at 10:00AM', end_of_visit:'5/21/2015 at 10:30PM', protocol:'143 Kit Inhibitor Trial', subject_id:'032', reason_for_visit:'Sputum Induction', message:'Patient coughed up blood.', priority:'Low')
dan.visits.create!(start_of_visit:'5/26/2015 at 8:00AM', end_of_visit:'5/26/2015 at 8:25AM', protocol:'SARP', subject_id:'033', reason_for_visit:'SARP Bronchoscopy', message:'Patient lung collapsed during biopsy', priority:'High')

rachael.visits.create!(start_of_visit:'10/4/2015 at 12:00PM', end_of_visit:'10/4/2015 at 12:30PM', protocol:'1444 Metformin Trial', subject_id:'012', reason_for_visit:'Glucose Blood Draw', message:'Patient fainted during visit today. Must fill out adverse event report.', priority:'Low')

# rob.visits.create!(start_of_visit:'10/2/2015 at 9AM', end_of_visit:'10/2/2015 at 10AM', protocol:'10180 Diabetes Metformin Trial', subject_id:'006', reason_for_visit:'Follow-Up Appointment', message:'Patient fainted during blood draw. Was sent to emergency. Needs follow-up immediately!', visit_status:'High', sent_status:'Message Sent', manager_response_status:'Deferred')

# brendan.visits.create!(start_of_visit:'10/3/2015 at 12:30PM', end_of_visit:'10/3/2015 at 3:00PM', protocol:'11844 KIA Trial', subject_id:'112', reason_for_visit:'Annual Follow-up', message:'Patient noted serious adverse event which required hospitalization. This requires immediate follow-up to the IRB in 72 hours.', visit_status:'High', sent_status:'Message Sent', manager_response_status:'Need more information')

# # NOTIFICATIONS
ryan.visits.first.notifications.create!(message:"Paging for signature on adverse event report")
