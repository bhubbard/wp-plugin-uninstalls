#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'meethour_access_token'
wp option delete 'meethour_timezone_value'
wp option delete 'mhvconf_meetings_current_page'
wp option delete 'mhvconf_meetings_total_pages'
wp option delete 'mhvconf_meetings_post_limit'
wp option delete 'updating_recording_id'
wp option delete 'mhvconf_recordings_current_page'
wp option delete 'mhvconf_recordings_total_pages'
wp option delete 'mhvconf_recordings_post_limit'
wp option delete 'meethour_timezone_name'
wp option delete 'meethour_main_user'
wp option delete 'meethour_permalink'
wp option delete 'meethour_api_key'
wp option delete 'mhvconf_login_page_url'
wp option delete 'meethour_access_token_expirey'
wp option delete 'meethour_client_id'
wp option delete 'meethour_client_secret'
wp option delete 'meethour_username'
wp option delete 'meethour_password'
wp option delete 'login-page-url'

# Delete Transients
wp transient delete 'meethour_error_message'
wp transient delete 'meethour_success_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meethour_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meethour_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meethour_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meethour_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meeting_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meeting_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meeting_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meeting_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meeting_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meeting_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meeting_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meeting_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meeting_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meeting_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meeting_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meeting_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duration_hr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duration_hr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duration_hr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duration_hr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duration_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duration_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duration_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duration_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'join_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'join_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'join_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'join_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recording_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recording_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recording_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recording_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recording_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recording_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recording_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recording_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recording_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recording_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recording_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recording_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recording_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recording_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recording_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recording_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attendes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attendes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attendes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attendes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meeting_passcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meeting_passcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meeting_passcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meeting_passcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meeting_agenda'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meeting_agenda'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meeting_agenda'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meeting_agenda'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meethour_timezone_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meethour_timezone_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meethour_timezone_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meethour_timezone_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meethour_timezone_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meethour_timezone_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meethour_timezone_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meethour_timezone_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instructions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instructions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instructions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instructions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'calendar_invite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'calendar_invite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'calendar_invite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'calendar_invite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hosts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hosts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hosts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hosts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recording_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recording_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recording_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recording_path'"
