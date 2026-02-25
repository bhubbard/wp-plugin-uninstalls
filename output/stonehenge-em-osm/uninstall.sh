#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_gmap_is_active'
wp option delete 'dbem_search_form_geo'
wp option delete 'dbem_events_anonymous_submissions'
wp option delete 'dbem_events_anonymous_user'
wp option delete 'dbem_ms_mainblog_locations'
wp option delete 'dbem_map_default_width'
wp option delete 'dbem_map_default_height'
wp option delete 'dbem_location_baloon_format'
wp option delete 'dbem_map_text_format'
wp option delete 'dbem_use_select_for_locations'
wp option delete 'dbem_require_location'
wp option delete 'dbem_events_form_result_success'
wp option delete 'dbem_events_form_result_success_updated'
wp option delete 'dbem_events_anonymous_result_success'
wp option delete 'dbem_bookings_anonymous'
wp option delete 'dbem_bookings_double'
wp option delete 'dbem_booking_feedback_already_booked'
wp option delete 'dbem_bookings_user_cancellation'
wp option delete 'dbem_booking_feedback_cancelled'
wp option delete 'dbem_booking_feedback_log_in'
wp option delete 'dbem_search_form_states_label'
wp option delete 'dbem_search_form_towns_label'
wp option delete 'dbem_search_form_regions_label'
wp option delete 'dbem_events_page_scope'
wp option delete 'dbem_events_default_limit'
wp option delete 'dbem_locations_default_limit'
wp option delete 'dbem_tags_default_limit'
wp option delete 'dbem_categories_default_limit'
wp option delete 'dbem_bookings_currency'
wp option delete 'dbem_data_privacy_consent_text'
wp option delete 'stonehenge_forums'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'em_email_users'
wp option delete 'dbem_mail_sender_name'
wp option delete 'dbem_mail_sender_address'
wp option delete 'dbem_rsvp_mail_send_method'
wp option delete 'dbem_smtp_host'
wp option delete 'dbem_rsvp_mail_port'
wp option delete 'dbem_smtp_username'
wp option delete 'dbem_smtp_password'
wp option delete 'dbem_smtp_encryption'
wp option delete 'dbem_rsvp_mail_SMTPAuth'
wp option delete 'dbem_smtp_autotls'

# Delete Transients
wp transient delete 'stonehenge_creations_plugins_feed'

# Clear Cron Jobs
wp cron event delete 'stonehenge_creations_licenses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_map_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_map_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_map_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_map_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_marker_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_marker_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_marker_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_marker_color'"
