#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lockme_settings'
wp option delete 'lockme_url_key'
wp option delete 'lockme_oauth2_state'
wp option delete 'lockme_oauth2_token'
wp option delete 'lockme_db_ver'
wp option delete 'lockme_amelia'
wp option delete 'lockme_app'
wp option delete 'lockme_booked'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'booked_defaults_%'"
wp option delete 'booked_defaults'
wp option delete 'lockme_bookingpress'
wp option delete 'lockme_bookly'
wp option delete 'lockme_cpabc'
wp option delete 'lockme_dopbsp'
wp option delete 'lockme_easyapp'
wp option delete 'lockme_ezscm'
wp option delete 'lockme_wpb'
wp option delete 'lockme_wpdevart'
wp option delete 'lockme_woo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_guest_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_guest_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_guest_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_guest_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_guest_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_guest_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_guest_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_guest_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_timeslot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_timeslot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_timeslot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_timeslot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf_meta_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'booked_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'booked_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'booked_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'booked_phone'"
