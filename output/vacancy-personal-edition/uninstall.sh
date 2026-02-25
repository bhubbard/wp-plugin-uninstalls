#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'va_default_venue'
wp option delete 'va_notification_header'
wp option delete 'va_notification_footer'
wp option delete 'va_setup_usage'
wp option delete 'va_venue_single'
wp option delete 'va_venue_plural'
wp option delete 'va_location_single'
wp option delete 'va_location_plural'
wp option delete 'va_reservation_single'
wp option delete 'va_reservation_plural'
wp option delete 'va_day_start_time'
wp option delete 'va_day_end_time'
wp option delete 'va_name_label'
wp option delete 'va_email_label'
wp option delete 'va_title_label'
wp option delete 'va_phone_label'
wp option delete 'va_reservation_type_label'
wp option delete 'va_description_label'
wp option delete 'va_setup_needs_label'
wp option delete 'va_av_needs_label'
wp option delete 'va_end_time_type'
wp option delete 'va_end_time_length_hr'
wp option delete 'va_end_time_length_min'
wp option delete 'va_end_time_min_length_hr'
wp option delete 'va_end_time_min_length_min'
wp option delete 'va_end_time_max_length_hr'
wp option delete 'va_end_time_max_length_min'
wp option delete 'va_end_time_minmax_interval'
wp option delete 'va_match_minmax_interval'
wp option delete 'va_require_login'
wp option delete 'va_admin_new_notification'
wp option delete 'va_admin_email_one'
wp option delete 'va_admin_email_label_one'
wp option delete 'va_admin_email_two'
wp option delete 'va_admin_email_label_two'
wp option delete 'va_user_new_notification'
wp option delete 'va_user_approved_notification'
wp option delete 'va_from_email_name'
wp option delete 'va_from_email_address'
wp option delete 'va_hide_admin_bar'
wp option delete 'va_show_admin_bar_for'
wp option delete 'va_show_vacancy_for'
wp option delete 'va_setup_cleanup'
wp option delete 'va_user_subject_line_new'
wp option delete 'va_user_subject_line_approved'
wp option delete 'va_reservation_success_message'
wp option delete 'va_show_reservation_details'
wp option delete 'va_show_form_fields'
wp option delete 'cpto_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_availability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_availability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_availability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_availability'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_reservation_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_reservation_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_reservation_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_reservation_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_reservation_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_reservation_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_reservation_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_reservation_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_reservation_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_reservation_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_reservation_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_reservation_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_start_setup_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_start_setup_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_start_setup_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_start_setup_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_end_cleanup_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_end_cleanup_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_end_cleanup_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_end_cleanup_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_reservation_setup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_reservation_setup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_reservation_setup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_reservation_setup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_reservation_av'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_reservation_av'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_reservation_av'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_reservation_av'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_reservation_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_reservation_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_reservation_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_reservation_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_reservation_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_reservation_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_reservation_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_reservation_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_reservation_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_reservation_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_reservation_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_reservation_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_offsite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_offsite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_offsite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_offsite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_zipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_contact_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_contact_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_contact_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_contact_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_tribe_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_tribe_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_tribe_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_tribe_event_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_monday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_monday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_monday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_monday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_monday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_monday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_monday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_monday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_tuesday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_tuesday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_tuesday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_tuesday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_tuesday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_tuesday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_tuesday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_tuesday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_wednesday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_wednesday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_wednesday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_wednesday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_wednesday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_wednesday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_wednesday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_wednesday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_thursday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_thursday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_thursday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_thursday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_thursday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_thursday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_thursday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_thursday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_friday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_friday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_friday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_friday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_friday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_friday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_friday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_friday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_saturday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_saturday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_saturday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_saturday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_saturday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_saturday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_saturday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_saturday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_sunday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_sunday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_sunday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_sunday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_venue_sunday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_venue_sunday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_venue_sunday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_venue_sunday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_monday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_monday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_monday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_monday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_monday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_monday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_monday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_monday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_tuesday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_tuesday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_tuesday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_tuesday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_tuesday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_tuesday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_tuesday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_tuesday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_wednesday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_wednesday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_wednesday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_wednesday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_wednesday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_wednesday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_wednesday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_wednesday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_thursday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_thursday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_thursday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_thursday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_thursday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_thursday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_thursday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_thursday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_friday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_friday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_friday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_friday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_friday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_friday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_friday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_friday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_saturday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_saturday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_saturday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_saturday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_saturday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_saturday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_saturday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_saturday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_sunday_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_sunday_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_sunday_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_sunday_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_location_sunday_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_location_sunday_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_location_sunday_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_location_sunday_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_push_to_ecp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_push_to_ecp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_push_to_ecp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_push_to_ecp'"
