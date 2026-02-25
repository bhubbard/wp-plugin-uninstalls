#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete '_webi_webinarform_fields'
wp option delete '_webi_eventform_fields'
wp option delete '_webi_events_per_page'
wp option delete '_webi_webinars_per_page'
wp option delete '_webi_enable_webinars'
wp option delete '_webi_enable_events'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%form_fields'"
wp option delete '_webi_goto_connect'
wp option delete '_webi_onstream_connect'
wp option delete '_webi_readytalk_connect'
wp option delete '_webi_zoom_connect'
wp option delete '_webi_publish_events'
wp option delete '_webi_license_x'
wp option delete '_webi_goto_organizer_key'
wp option delete '_webi_goto_account_key'
wp option delete '_webi_goto_access_token'
wp option delete '_webi_goto_refresh_token'
wp option delete '_webi_goto_refresh_token_expire_on'
wp option delete '_webi_goto_access_token_expire_on'
wp option delete '_webi_onstream_username'
wp option delete '_webi_onstream_password'
wp option delete '_webi_readytalk_access_number'
wp option delete '_webi_readytalk_access_code'
wp option delete '_webi_readytalk_passcode'
wp option delete '_webi_zoom_key'
wp option delete '_webi_zoom_secret'
wp option delete '_webi_zoom_refresh_token'
wp option delete '_webi_zoom_refresh_token_expire_on'
wp option delete '_webi_zoom_access_token_expire_on'
wp option delete '_webi_license_user_id'
wp option delete '_webi_events_page_id'
wp option delete '_webi_webinars_page_id'
wp option delete '_webi_banner_theme'
wp option delete '_webi_license_key'
wp option delete '_webi_gotowebinar_key'
wp option delete '_webi_gotowebinar_secret'
wp option delete '_webi_zoom_access_token'
wp option delete 'webi_organizer_logo'

# Delete Transients
wp transient delete '_webi_goto_access_token'
wp transient delete '_webi_zoom_access_token'

# Clear Cron Jobs
wp cron event delete 'gotowebinar_refresh_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_event_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_event_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_event_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_event_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_platform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_platform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_platform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_platform'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_webi_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_webi_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_webi_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_webi_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_carosel_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_carosel_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_carosel_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_carosel_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_promotional_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_promotional_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_promotional_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_promotional_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_sponser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_sponser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_sponser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_sponser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_all_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_all_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_all_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_all_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_gotowebinar_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_gotowebinar_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_gotowebinar_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_gotowebinar_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_goto_organizer_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_goto_organizer_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_goto_organizer_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_goto_organizer_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_goto_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_goto_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_goto_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_goto_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_onstreamwebinar_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_onstreamwebinar_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_onstreamwebinar_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_onstreamwebinar_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_onstream_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_onstream_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_onstream_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_onstream_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_onstream_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_onstream_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_onstream_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_onstream_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_readytalkwebinar_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_readytalkwebinar_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_readytalkwebinar_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_readytalkwebinar_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_readytalk_accessnumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_readytalk_accessnumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_readytalk_accessnumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_readytalk_accessnumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_readytalk_accesscode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_readytalk_accesscode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_readytalk_accesscode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_readytalk_accesscode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_readytalk_passcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_readytalk_passcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_readytalk_passcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_readytalk_passcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_zoom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_zoom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_zoom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_zoom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_sync_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_sync_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_sync_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_sync_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_sync_err'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_sync_err'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_sync_err'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_sync_err'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_remove_err'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_remove_err'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_remove_err'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_remove_err'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_speaker_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_speaker_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_speaker_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_speaker_lastname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_zipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_registration_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_registration_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_registration_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_registration_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_why_attened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_why_attened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_why_attened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_why_attened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webi_who_attened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webi_who_attened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webi_who_attened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webi_who_attened'"
