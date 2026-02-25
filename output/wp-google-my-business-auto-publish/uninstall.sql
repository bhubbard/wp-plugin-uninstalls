-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_google_my_business_auto_publish_settings', 'wp_google_my_business_auto_publish_auth_settings', 'northern_beaches_websites', 'wp_google_my_business_auto_publish_locations', 'wp_google_my_business_auto_publish_auth_settings', 'wp_google_my_business_auto_publish_accounts', 'wp_google_my_business_auto_publish_location_images');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_google_share_message', '_custom_google_button', '_dont_share_post_google', '_make_an_event', '_event_title', '_event_start_date_time', '_event_end_date_time', '_location_selection_google', '_sent_to_google');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_google_share_message', '_custom_google_button', '_dont_share_post_google', '_make_an_event', '_event_title', '_event_start_date_time', '_event_end_date_time', '_location_selection_google', '_sent_to_google');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_google_share_message', '_custom_google_button', '_dont_share_post_google', '_make_an_event', '_event_title', '_event_start_date_time', '_event_end_date_time', '_location_selection_google', '_sent_to_google');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_google_share_message', '_custom_google_button', '_dont_share_post_google', '_make_an_event', '_event_title', '_event_start_date_time', '_event_end_date_time', '_location_selection_google', '_sent_to_google');

