#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zoom_api_key'
wp option delete 'zoom_api_secret'
wp option delete 'zoom_api_disable_moment_js'
wp option delete 'zoom_api_date_time_format'
wp option delete 'zoom_api_custom_date_time_format'
wp option delete 'zoom_going_tostart_meeting_text'
wp option delete 'zoom_ended_meeting_text'
wp option delete '_zvc_user_lists'
wp option delete '_zvc_user_lists_expiry_time'
wp option delete '_vczapi_zoom_settings'
wp option delete 'zoom_api_twenty_fourhour_format'
wp option delete 'zoom_api_full_month_format'
wp option delete '_vczapi_secret'
wp option delete 'zoom_api_enable_debug_log'
wp option delete 'vczapi_global_oauth_data'
wp option delete 'zoom_api_meeting_options'
wp option delete 'zoom_vanity_url'
wp option delete 'zoom_show_author'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vczapi_user_meetings_for_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_expiration'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_vczapi_user_webinars_for_%'"
wp option delete 'zoom_past_join_links'
wp option delete 'vczapi_dismiss_sdk_not_active_notice'
wp option delete 'zoom_api_notice'
wp option delete 'vczapi_sdk_key'
wp option delete 'vczapi_sdk_secret_key'
wp option delete 'zoom_api_disable_auto_meeting_pwd'
wp option delete 'zoom_api_donot_delete_on_zoom'
wp option delete 'vczapi_oauth_account_id'
wp option delete 'vczapi_oauth_client_id'
wp option delete 'vczapi_oauth_client_secret'
wp option delete 'zoom_api_embed_pwd_join_link'
wp option delete 'zoom_api_hide_shortcode_join_links'
wp option delete 'zoom_api_hide_in_jvb'
wp option delete 'vczapi_disable_invite'
wp option delete 'zoom_api_disable_jvb'
wp option delete 'zoom_api_default_lang_jvb'
wp option delete '_vczapi_sync_meetings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_expiry_time'"
wp option delete '_vczapi_dismiss_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meeting_zoom_meeting_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meeting_zoom_meeting_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meeting_zoom_meeting_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meeting_zoom_meeting_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expiry_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expiry_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expiry_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expiry_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meeting_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meeting_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meeting_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meeting_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meeting_zoom_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meeting_zoom_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meeting_zoom_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meeting_zoom_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_zoom_hostid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_zoom_hostid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_zoom_hostid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_zoom_hostid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vczapi_user_zoom_email_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vczapi_user_zoom_email_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vczapi_user_zoom_email_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vczapi_user_zoom_email_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vczapi_meeting_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vczapi_meeting_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vczapi_meeting_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vczapi_meeting_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meeting_field_start_date_utc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meeting_field_start_date_utc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meeting_field_start_date_utc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meeting_field_start_date_utc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meeting_zoom_join_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meeting_zoom_join_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meeting_zoom_join_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meeting_zoom_join_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meeting_zoom_start_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meeting_zoom_start_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meeting_zoom_start_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meeting_zoom_start_url'"
