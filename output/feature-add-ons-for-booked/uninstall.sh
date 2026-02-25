#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'booked_hide_end_times'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'booked_custom_fields_%'"
wp option delete 'booked_custom_fields'
wp option delete 'booked_require_guest_phone'
wp option delete 'booked_require_guest_email_address'
wp option delete 'booked_approval_email_content'
wp option delete 'booked_approval_email_subject'
wp option delete 'booked_registration_email_content'
wp option delete 'booked_registration_email_subject'
wp option delete 'booked_registration_name_requirements'
wp option delete 'booked_booking_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_timeslot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_timeslot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_timeslot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_timeslot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_guest_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_guest_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_guest_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_guest_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_guest_surname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_guest_surname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_guest_surname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_guest_surname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_guest_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_guest_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_guest_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_guest_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf_meta_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
